upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  b4. bes8 b4 |
  a4~ a c
}

lower = \relative c' {
  \clef bass
  \key c \major
  \time 3/4

  gis4 c e |
  a, c e
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

