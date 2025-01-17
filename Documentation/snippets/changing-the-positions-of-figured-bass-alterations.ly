%% DO NOT EDIT this file manually; it was automatically
%% generated from `Documentation/snippets/new/`.
%%
%% Make any changes in `Documentation/snippets/new/`,
%% then run `scripts/auxiliar/makelsr.pl --new`.
%%
%% This file is in the public domain.
%%
%% Note: this file works from version 2.23.11.

\version "2.23.13"

\header {
  lsrtags = "chords"

  texidoc = "
Accidentals and plus signs can appear before or after the numbers,
depending on the @code{figuredBassAlterationDirection} and
@code{figuredBassPlusDirection} properties.

If plus signs appear after the number, specially designed glyphs are
provided for some figures.
"

  doctitle = "Changing the positions of figured bass alterations"
} % begin verbatim


\figures {
  <5\+> <5+ 4\+> <6 4- 2\+> r
  \set figuredBassAlterationDirection = #RIGHT
  <5\+> <5+ 4\+> <6 4- 2\+> r
  \set figuredBassPlusDirection = #RIGHT
  <5\+> <5+ 4\+> <6 4- 2\+> r
  \set figuredBassAlterationDirection = #LEFT
  <5\+> <5+ 4\+> <6 4- 2\+> r
}
