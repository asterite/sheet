% LilyBin
upper = \relative c''' {
  \clef "treble^8"
  \key c \major
  \time 3/4

  b4. bes8 b4 | a2 c4 | b2. | gis2 gis4 |
  b2 gis4 | c4. b8 a4 | b4 gis2~ | r2 e'4 |
  <a, c dis>4\arpeggio <fis a>8 <gis b> <a c>4 | <e gis>2 e'4 | <a, c dis>4\arpeggio <fis a>4 <a c> | c4 b a |
  b2. | a2 c4 | <e, gis b>2.\arpeggio~ | <e gis b>2. |
  a4 b <a c> | d4. c8 b4 | bes2 g4 | d g bes |
  a2 fis4 | cis4. d8 cis4 | b4 <e gis> <gis b> | <b e>4 \acciaccatura {d,16 dis} e8 fis gis a |
}

lower = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  gis4 c e | a, c e | e, b' e | r4 b2 |
  gis4 c2 | dis,4 a' c | e,4 gis b | d2. |
  a2. | <e gis c>2. | a4 a c | d,2. |
  e4 b' e | dis, a' c | <e, gis b>2\arpeggio d4 | b2. |
  a'4 <c e> <c e> | e, <gis b> <b e> | g <bes d> <bes d> | d, <g bes> <bes d> |
  fis4 <a cis> <a cis> | cis,4 <fis a> <fis a> | <e gis b>2.~ | <e gis b>2. |
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
  \set PianoStaff.midiInstrument = #"music box"
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
