\header{
  title = "Plants vs. Zombies - Ultimate Battle"
  composer = "Laura Shigihara"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a16 e'16 a16 r16
  g16 e16 r16 d8[
  g8] e8[ d16 c16 b16]
  |
  a16 e'16 a16 r16
  g16 e16 r16 d8[
  g8] e8[ d16 c16 b16]
  |
  a16 e'16 a16 r16
  g16 e16 r16 d8[
  g8] e8[ d16 c16 b16]
  |
  a16 e'16 a16 r16
  g16 e16 r16 d8[
  g8] e8[ d16 c16 b16]
  |
  <<a'1 c e>>
  |
  r8 d8[ g16 a8] e8 d8 c8 d16[ e16 f16]
  |
  <<c1 e>>
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  r1
  |
  r1
  |
  r1
  |
  d,4 e4 f4 g4
  |
  a8.[ e'8. a8.] a8[ e16 c8] e,8
  |
  a8.[ e'8. a8.] e8.[ c8] e,8
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
     }
  }
}

\version "2.15.41"