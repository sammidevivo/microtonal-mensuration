from scamp import *

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

def counterpoint_checker(melody_1: Melody, melody_2: Melody):
    ptr1 = 0
    ptr2 = 0
    time = 0

    while ptr1 < len(melody_1.notes) - 1 and ptr2 < len(melody_2.notes) - 1:
        # check for disoncance
        if not consonant(melody_1.notes[ptr1], melody_2.notes[ptr2]):
            print("Dissonance at time: ", time)
            # passing tone / neighboring tone: approached and resolved by step
            
            # suspension


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
        
def generate_score(melody_1: Melody, melody_2: Melody):
    s = Session()
    engraving_settings.show_microtonal_annotations = True
    p1 = s.new_part("melody 1", "piano")
    p2 = s.new_part("melody 2", "piano")
    s.start_transcribing()
    # s.fast_forward_in_beats(1000)
    fork(lambda: melody_1.play(p1))
    fork(lambda: melody_2.play(p2))
    wait_for_children_to_finish()
    score = s.stop_transcribing()
    score.to_score(title = "Mensuration Canon").show()
    
josqin_notes = [60, 60, 60, 63, 60, 63, 65, 67]
josqin_durations = [1, 1, 1, 1.5, 0.5, 0.75, 0.25, 2]

melody1 = Melody(josqin_notes, josqin_durations)

melody2 = Melody(josqin_notes, [x * 1.5 for x in josqin_durations])

counterpoint_checker(melody1, melody2)
generate_score(melody1, melody2)

