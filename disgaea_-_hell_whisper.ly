% LilyBin
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  b4. bes8 b4 |
  a2 c4 |
  b2. |
  gis2 gis4 |
  b2 gis4 |
  c4. b8 a4 |
  b4 gis2~ |
  r2 e'4 |
  <a, c dis>4\arpeggio <fis a>8 <gis b> <a c>4 |
}

lower = \relative c' {
  \clef bass
  \key c \major
  \time 3/4

  gis4 c e |
  a, c e |
  e, b' e |
  r4 b2 |
  gis4 c2 |
  dis,4 a' c |
  e,4 gis b |
  d2. |
  a2. |
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
      tempoWholesPerMinute = #(ly:make-moment 140 4)
     }
  }
}
