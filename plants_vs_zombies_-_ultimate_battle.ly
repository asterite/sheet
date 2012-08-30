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
  \acciaccatura { e16[ f16] } <<c1 e>>
  r8 d8[ g16 a8] e8 d8 c8 d16[ e16 f16]
  |
  <<a,2 c e>> <<a,8 c g'>> e32 f32 e16 c8 d8
  |
  r2 <<g,8 b g'>> d8 b8 a8
  |
  g8. <<d8. a'>> <<d,8. g>> a8. d16 a16 g16 d16
  |
  <<d8. fis>> a8. <<d,2 fis a d>> r8
  |
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  r1 |
  r1 |
  r1 |
  d,4 e4 f4 g4 |
  a8.[ e'8. a8.] a8[ e16 c8] e,8 |
  a8.[ e'8. a8.] e8.[ c8] e,8 |
  a8.[ e'8. a8.] a8[ e16 c8] e,8 |
  a8.[ e'8. a8.] e8.[ c8] e,8 |
  f8. c'8. f4. c4 |
  e,8. b'8. e4. b4 |
  d,8. a'8. d4. a4 |
  d,8. a'8. d4 d,8 d4 |
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
      tempoWholesPerMinute = #(ly:make-moment 120 4)
     }
  }
}

\version "2.15.41"