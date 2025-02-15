from scamp import *
import os

class Melody():
    def __init__(self, notes: list, durations: list):
        self.notes = notes
        self.durations = durations

        self.times = []
        for i in range(len(durations)):
            self.times.append(sum(durations[:i]))

    def get_notes(self):
        return self.notes
    
    def get_durations(self):
        return self.durations
    
    def get_time(self, note):
        return self.times[note]
    
    def get_note_at_time(self, time):
        for i in range(len(self.times)):
            if self.times[i] > time:
                return i - 1
        return len(self.notes) - 1

    def play(self, part: ScampInstrument):
        for note, dur in zip(self.notes, self.durations):
            part.play_note(note, 0.8, dur)

def consonant(p1, p2):
    value = abs(p1 - p2) % 12
    ranges = [(0, 0.14), (2.9564, 3.3564), (3.7231, 4.0531), (6.8796, 7.1596), (7.9469, 8.2769), (8.6436, 9.0436)]

    # Check if value is within any of the given ranges
    for low, high in ranges:
        if low <= value <= high:
            return True
    return False

def counterpoint_checker(melody_1: Melody, melody_2: Melody, up_neighbor: bool, low_neighbor: bool):
    ptr1 = 0
    ptr2 = 0
    time = 0

    while ptr1 < len(melody_1.notes) - 1 and ptr2 < len(melody_2.notes) - 1:
        # check for disoncance
        if not consonant(melody_1.notes[ptr1], melody_2.notes[ptr2]):
            print("Dissonance at time: ", time)
            # passing tone / neighboring tone: approached and resolved by step
            # which one is moving faster? : the one with the higher time at the pointer



            # suspension: approached by the same note and resolved by step down


        # move the pointer of the next note
        if melody_1.get_time(ptr1 + 1) < melody_2.get_time(ptr2 + 1):
            ptr1 += 1
            time = melody_1.get_time(ptr1)
        elif melody_1.get_time(ptr1 + 1) > melody_2.get_time(ptr2 + 1):
            ptr2 += 1
            time = melody_2.get_time(ptr2)
        else:
            ptr1 += 1
            ptr2 += 1
            time = melody_1.get_time(ptr1)
        
def generate_score(melody_1: Melody, melody_2: Melody, trans, aug, inst_1: str, inst_2: str):
    # Construct file name and title dynamically
    file_name = f"mensuration-aug[{aug}]trans[{trans}].pdf"
    name = f"Mensuration: aug: {aug}, trans: {trans}"

    # Ensure directory exists
    output_dir = os.path.join("mensuration_canons", "scores")
    os.makedirs(output_dir, exist_ok=True)

    # Generate the score
    s = Session()
    engraving_settings.show_microtonal_annotations = True
    p1 = s.new_part(inst_1, "piano")
    p2 = s.new_part(inst_2, "piano")
    s.start_transcribing()
    s.fast_forward_in_beats(1000)
    s.fork(melody_1.play, args=(p1,))
    s.fork(melody_2.play, args=(p2,))
    wait_for_children_to_finish()

    # Export as PDF
    score = s.stop_transcribing().to_score(title=name)
    file_path = os.path.join(output_dir, file_name)
    score.export_pdf(file_path)
    

def generate_mensurations(cantus_firmus: Melody):
    transpositions = [7]
    augmentations = [2/1, 3/1, 4/1, 5/1, 6/1, 7/1, 3/2, 5/2, 7/2, 4/3, 5/3, 7/3, 5/4, 7/4, 6/5, 7/5, 7/6]

    for aug in augmentations:
        for trans in transpositions:
            counterpoint = Melody([note + trans for note in cantus_firmus.notes], [dur * aug for dur in cantus_firmus.durations])
            generate_score(cantus_firmus, counterpoint, trans, aug, "cantus firmus", "counterpoint")
    

cantus_firmus = Melody([62, 65.5, 63.5, 62, 65.5, 69, 67, 71, 69, 67, 63.5, 65.5, 63.5, 62], 
                       [2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0])

generate_mensurations(cantus_firmus)
