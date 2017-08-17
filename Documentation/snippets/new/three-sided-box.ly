\version "2.21.0"

\header {
  lsrtags = "rhythms, scheme-language, text"

  texidoc = "
This example shows how to add a markup command to get a three sided box
around some text (or other markup).

"
  doctitle = "Three-sided box"
}
% New command to add a three sided box, with sides north, west and south
% Based on the box-stencil command defined in scm/stencil.scm
% Note that ";;" is used to comment a line in Scheme
#(define-public (NWS-box-stencil stencil thickness padding)
   "Add a box around STENCIL, producing a new stencil."
   (let* ((x-ext (interval-widen (ly:stencil-extent stencil X) padding))
          (y-ext (interval-widen (ly:stencil-extent stencil Y) padding))
          (y-rule (make-filled-box-stencil (cons 0 thickness) y-ext))
          (x-rule (make-filled-box-stencil
                   (interval-widen x-ext thickness) (cons 0 thickness))))
     ;; (set! stencil (ly:stencil-combine-at-edge stencil X 1 y-rule padding))
     (set! stencil (ly:stencil-combine-at-edge stencil X LEFT y-rule padding))
     (set! stencil (ly:stencil-combine-at-edge stencil Y UP x-rule 0.0))
     (set! stencil (ly:stencil-combine-at-edge stencil Y DOWN x-rule 0.0))
     stencil))

% The corresponding markup command, based on the \box command defined
% in scm/define-markup-commands.scm
#(define-markup-command (NWS-box layout props arg) (markup?)
   #:properties ((thickness 0.1) (font-size 0) (box-padding 0.2))
   "Draw a box round @var{arg}.  Looks at @code{thickness},
@code{box-padding} and @code{font-size} properties to determine line
thickness and padding around the markup."
   (let ((pad (* (magstep font-size) box-padding))
         (m (interpret-markup layout props arg)))
     (NWS-box-stencil m thickness pad)))

% Test it:

\relative c' {
  c1^\markup { \NWS-box ABCD }
  c1^\markup { \NWS-box \note {4} #1.0 }
}
