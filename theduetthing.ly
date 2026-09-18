\version "2.24.0"

\header {
  title = "TWO-PLAYER DUET"
  subtitle = "Andante — Full Dynamics Version (No Tenuto)"
  composer = "Confetti"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4 = 76
}

violinPart = \relative c'' {
  \global
  \dynamicUp

  c4\mp d\mp e\mf g\mf |
  a\mf g\mp f\mp d\mp |
  e\mf f\mp g\mf a\mf |
  g\mp e\mp d\mp c\mp |

  f4\mf g\mf a\mf g\mp |
  e\mp d\mp c\p a\p |
  g\mp f\mp e\mp d\mp |
  c\mp d\mp e\mf f\mf |

  e4\mf g\mf a\mf f\mp |
  d\mp e\mp f\mf g\mf |
  a\mf g\mp f\mp d\mp |
  c\mp d\mp e\mf f\mf |

  a,4\mp c\mp e\mf d\mf |
  f\mf e\mp d\mp c\mp |
  g\mf a\mf b\mf a\mp |
  c\mf b\mp a\mp g\mp |

  b4\mf a\mp g\mp f\mp |
  e\mp d\mp c\p b\p |
  a\mp g\mp f\mp e\mp |
  c'4\mf d\mf e\mf f\mf |

  a,4\mp b\mp c\mf d\mf |
  e\mf d\mp c\mp b\mp |
  g\mp a\mp g\mp f\mp |
  e\mp d\mp c\p b\p |

  c'4\mf d\mf e\mf f\mf |
  g\mf f\mp e\mp d\mp |
  b\mp a\mp g\mp f\mp |
  c'4\mf d\mf e\mf f\mf |

  e,4\mp c'\mf |
  g\mf a\mf |
  f\mf d'\mf |
  c\mf e,\mp |
}

celloPart = \relative c {
  \global
  \dynamicUp

  c4\mp e\mp g\ a\mf |
  g\mp f\mp e\mp d\mp |
  c\mp d\mp e\mf f\mf |
  g\mf f\mp e\mp d\mp |

  a'4\mf g\mp f\mp e\mp |
  d\mp e\mp f\mf g\mf |
  a\mf g\mp f\mp d\mp |
  c\mp d\mp e\mf f\mf |

  c4\mp a\mp |
  g\mp d\mp |
  f\mp c\mp |
  g'\mf e\mp |

  c4\mp d\mp |
  e\mf g\mf |
  a\mf f\mp |
  g\mf e\mp |

  d4\mp e\mp |
  f\mf g\mf |
  a\mf g\mp |
  c\mf a\mp |

  c,4\mp d\mp e\mf f\mf |
  g\mf f\mp e\mp d\mp |
  a'4\mf g\mp f\mp e\mp |
  d\mp c\mp b\p a\p |

  c4\mf e\mf g\mf a\mf |
  g\mf f\mp e\mp d\mp |
  c\mp d\mp e\mf f\mf |
  a\mf g\mp f\mp e\mp |

  c4\mf g\mf |
  a\mf e\mf |
  f\mf d\mp |
  c\mf a\mp |
}

\score {
  \new StaffGroup <<
    % Top two staves: Violin (treble)
    \new Staff \with { instrumentName = "Violin" } {
      \clef treble
      \new Voice { \violinPart }
    }
    \new Staff \with { instrumentName = "Violin (2nd Staff)" } {
      \clef treble
      \new Voice { \violinPart }
    }

    % Bottom two staves: Cello (bass)
    \new Staff \with { instrumentName = "Cello" } {
      \clef bass
      \new Voice { \celloPart }
    }
    \new Staff \with { instrumentName = "Cello (2nd Staff)" } {
      \clef bass
      \new Voice { \celloPart }
    }
  >>
  \layout { }
  \midi { }
}



