% LilyBin
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  b4. bes8 b4 |
  a2 c4 |
  b2. |
  gis2 gis4 |
}

lower = \relative c' {
  \clef bass
  \key c \major
  \time 3/4

  gis4 c e |
  a, c e |
  e, b' e |
  r4 b2 |
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

