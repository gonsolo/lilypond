%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "chords"

%% Translation of GIT committish: 4385ed4cc738e164a95798862580b4b86703356f
  texidoces = "
Al juntar nombres de acorde en cifrado americano, melodía y letra,
obtenemos una hoja guía de acordes o «lead sheet»:

"
  doctitlees = "Hoja guía de acordes o «lead sheet» sencilla"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
 texidocde = "
Ein Liedblatt besteht aus Akkordbezeichnungen, einer Melodie und dem Liedtext:

"
  doctitlede = "Ein einfaches Liedblatt"
%% Translation of GIT committish: 54687441dde2fe248e20989bd265a274583413a8
  texidocfr = "
Assembler des noms d'accords, une mélodie et des paroles permet
d'obtenir la  partition d'un chanson :

"
  doctitlefr = "Chanson simple"

  texidoc = "
When put together, chord names, a melody, and lyrics form a lead sheet:

"
  doctitle = "Simple lead sheet"
} % begin verbatim

<<
  \chords { c2 g:sus4 f e }
  \relative c'' {
    a4 e c8 e r4
    b2 c4( d)
  }
  \addlyrics { One day this shall be free __ }
>>

