\version "2.24.4"
\language "english"
\include "C:\Users\sammi\AppData\Local\SCAMP\scamp_lilypond_template.ly"
\header
{
    title = "Mensuration: aug: 1.4, trans: 7"
    composer = "CSStiny's Child"
}
\score
{
    % OPEN_BRACKETS:
    \new Score
    <<
        % OPEN_BRACKETS:
        \context Staff = "cantus firmus"
        \with
        {
            instrumentName = #"cantus firmus"
        }
        {
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                % OPENING:
                    % COMMANDS:
                    \time 4/4
                    % OPENING:
                    % COMMANDS:
                    \clef "treble"
                    d'2
                    fqs'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "65.5" }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Voice = "TempoVoice"
                {
                    % BEFORE:
                    % COMMANDS:
                    \tempo 4=60
                    s1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    eqf'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "63.5" }
                    d'2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    fqs'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "65.5" }
                    a'2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    g'2
                    b'2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    a'2
                    g'2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    eqf'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "63.5" }
                    fqs'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "65.5" }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    eqf'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "63.5" }
                    d'2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    R1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    R1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    R1
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context Staff = "counterpoint"
        \with
        {
            instrumentName = #"counterpoint"
        }
        {
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                % OPENING:
                    % COMMANDS:
                    \time 4/4
                    % OPENING:
                    % COMMANDS:
                    \clef "treble"
                    a'2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        a'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        a'8
                        cqs''16
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "72.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    cqs''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    cqs''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        cqs''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        cqs''16
                        bqf'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "70.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    bqf'2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        bqf'8
                        a'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    a'2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        a'16
                        cqs''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "72.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    cqs''2
                    e''2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        e''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        e''8
                        d''16
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    d''2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        d''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        d''16
                        fs''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    fs''2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        fs''8
                        e''8.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    e''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    e''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        e''16
                        d''4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    d''2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    bqf'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup { \pitch-annotation "70.5" }
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        bqf'8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        bqf'8
                        cqs''16
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "72.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    cqs''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    cqs''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        cqs''8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        cqs''16
                        bqf'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "70.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    bqf'2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            <<
                % OPEN_BRACKETS:
                \context Voice = "voiceOne"
                {
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        bqf'8
                        a'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    a'2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        a'16
                        r16
                        r8.
                        % AFTER:
                        % COMMANDS:
                        \bar "|."
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}
