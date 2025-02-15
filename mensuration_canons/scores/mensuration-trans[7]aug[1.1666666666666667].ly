\version "2.24.4"
\language "english"
\include "C:\Users\sammi\AppData\Local\SCAMP\scamp_lilypond_template.ly"
\header
{
    title = "Mensuration: aug: 1.1666666666666667, trans: 7"
    composer = "HTMLvis"
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
                    \times 2/3
                    {
                        a'8
                        cqs''4
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
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        cqs''4
                        bqf'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "70.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    bqf'2
                    a'4
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
                    a'4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        a'8
                        cqs''4
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
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        cqs''4
                        e''8
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
                    e''2
                    d''2
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
                    \times 2/3
                    {
                        d''8
                        fs''4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    fs''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        fs''4
                        e''8
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
                    d''2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        d''8
                        bqf'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "70.5" }
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
                    bqf'4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        bqf'4
                        cqs''8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { \pitch-annotation "72.5" }
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    cqs''2
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
                    \times 2/3
                    {
                        bqf'8
                        a'4
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                    % CLOSE_BRACKETS:
                    }
                    a'4
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
                    \times 2/3
                    {
                        a'4
                        r8
                    % CLOSE_BRACKETS:
                    }
                    r4
                    r2
                    % AFTER:
                    % COMMANDS:
                    \bar "|."
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}
