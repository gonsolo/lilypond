\version "2.13.5"

\header {
  texidoc = "@code{\\killCues} shall only remove real cue notes generated by
  @code{\\cueDuring}, but not other music quoted using @code{\\quoteDuring}."
}

mus = \relative c' { c2 c c c c c c c }
\addQuote #"M" \mus

q = \relative c' { 
  d2 \quoteDuring #"M" { s1 } e2 \cueDuring #"M" #UP { s1 } f2
}

\score { <<
  \q
  \killCues \q
>> }
