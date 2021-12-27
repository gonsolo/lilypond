\version "2.23.6"

\header {
  lsrtags = "scheme-language, tweaks-and-overrides"

  texidoc = "
Sometimes you may want to affect a single articulation-type. Although
it is always possible to use @code{\\tweak}, it might become tedious to
do so for every single sign of a whole score. The following shows how
to tweak articulations with a list of custom settings. One use-case
might be to create a style sheet.

With 2.16.2 and above it is possible to put the proposed function,
@code{\\customScripts}, into a @code{\\layout}-block.

"
  doctitle = "Overriding articulations by type"
}

% Code by David Nalesnik and Thomas Morley

#(define (custom-script-tweaks ls)
  (lambda (grob)
    (let* ((type (ly:event-property
                    (ly:grob-property grob 'cause)
                    'articulation-type))
           (tweaks (assoc-ref ls type)))
      (if tweaks
          (for-each
            (lambda (x) (ly:grob-set-property! grob (car x) (cdr x)))
            tweaks)))))

customScripts =
#(define-music-function (settings) (list?)
#{
  \override Script.before-line-breaking =
    #(custom-script-tweaks settings)
#})

revertCustomScripts = \revert Script.before-line-breaking

%%%%%%%%%%%%%
% Example:
%%%%%%%%%%%%%

% Predefine a list of desired tweaks.
#(define my-settings-1
  '(
    (staccato . ((color . (1 0 0))
                 (padding . 0.5)))
    (accent . ((font-size . 0)
               (color . (1 0 0))))
    (tenuto . ((rotation . (45 0 0))
               (padding . 2)
               (font-size . 10)))
    (staccatissimo . ((padding . 1)
                      (color . (1 0 0))))
    (segno . ((font-size . 0)
              (color . (1 0 0))))
    ))

#(define my-settings-2
  '(
    (staccato . ((color . (0 1 0))))
    (accent . ((font-size . 4)
               (color . (0 1 0))
               (padding . 1.5)))
    (tenuto . ((font-size . 10)))
    (staccatissimo . ((padding . 2)
                      (color . (0 1 0))))
    (coda . ((color . (0 1 0))
             (padding . 1)))
    ))

one =
\relative c'' {
  f1--
  \customScripts #my-settings-1
  f-. f-! f-> f-- f-!\segno
  \revertCustomScripts
  f-> f-.
}

two =
\relative c' {
  f1--
  \customScripts #my-settings-2
  f-. f-! f-> f---> f-!
  f-> f-.\coda
}

\new Staff <<
   \new Voice { \voiceOne \one }
   \new Voice { \voiceTwo \two }
   >>