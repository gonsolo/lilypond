%% DO NOT EDIT this file manually; it was automatically
%% generated from the LilyPond Snippet Repository
%% (http://lsr.di.unimi.it).
%%
%% Make any changes in the LSR itself, or in
%% `Documentation/snippets/new/`, then run
%% `scripts/auxiliar/makelsr.pl`.
%%
%% This file is in the public domain.

\version "2.23.13"

\header {
  lsrtags = "paper-and-layout, staff-notation, tweaks-and-overrides"

  texidoc = "
Though the simplest way to resize staves is to use
@code{#(set-global-staff-size xx)}, an individual staff's size can be
changed by scaling the properties @code{'staff-space} and
@code{fontSize}.
"

  doctitle = "Changing the staff size"
} % begin verbatim


<<
  \new Staff {
    \relative c'' {
      \dynamicDown
      c8\ff c c c c c c c
    }
  }
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
  } {
    \clef bass
    c8 c c c c\f c c c
  }
>>
