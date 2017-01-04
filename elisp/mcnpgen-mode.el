;;Generic mode for highlighting syntax for LANL's 
;;MCNP Monte Carlo transport code input file.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;;Author: Tim Bohm tdbohm@facstaff.wisc.edu 
;;Address: University of Wisconsin-Madison
;;Department: Medical Physics
;;Copyright (C) 2002
;;
;;This program is free software; you can redistribute it and/or modify
;;it under the terms of the GNU General Public License as published by
;;the Free Software Foundation; either version 2 of the License, or
;;(at your option) any later version.
;;
;;This program is distributed in the hope that it will be useful,
;;but WITHOUT ANY WARRANTY; without even the implied warranty of
;;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;GNU General Public License for more details.
;;
;;You should have received a copy of the GNU General Public License
;;along with this program; if not, write to the Free Software
;;Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;;         How to use:
;;Put -*-mcnpgen-*- on the first line of your 
;;input file to autoload this mode (often this is the title card).
;;
;;Your .emacs file should contain something like:
;;(setq load-path (cons (expand-file-name "/path/to/your/lispdirectory") load-path))
;;(global-font-lock-mode t)
;;(load "mcnpgen-mode")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(require 'font-lock)
(require 'generic)
(define-generic-mode 'mcnpgen-mode
  ;; comment-list (2 ways to comment in MCNP so do below)
  nil
  ;; keyword-list (do below also)
  nil
  ;; font-lock-list (additional expressions to highlight) 
  '(
     ("^[Cc] .*" . 'font-lock-comment-face)    ;; a "c" followed by a blank in
     ("^ [Cc] .*" . 'font-lock-comment-face)   ;; columns 1-5 is a comment line
     ("^  [Cc] .*" . 'font-lock-comment-face)  ;; (the reg exp \{n,m\} does not
     ("^   [Cc] .*" . 'font-lock-comment-face) ;; seem to work here)
     ("^    [Cc] .*" . 'font-lock-comment-face)
     ("$.*" . 'font-lock-comment-face)         ;; dollar sign comment indicator
     ("\\<\\([mM][oO][dD][eE]\\|[iI][mM][pP]\\|[pP][hH][yY][sS]\\|[cC][uU][tT]\\|[sS][dD][eE][fF]\\|[pP][rR][iI][nN][tT]\\|[dD][bB][cC][nN]\\|[kK][cC][oO][dD][eE]\\|[pP][tT][rR][aA][cC]\\|[vV][oO][iI][dD]\\)\\>" . 'font-lock-keyword-face) ;; mcnp keywords
     ("\\<\\([eE][rR][gG]\\|[pP][oO][sS]\\|[cC][eE][lL]\\|[dD][iI][rR]\\|[vV][eE][cC]\\|[aA][xX][sS]\\|[rR][aA][dD]\\|[eE][xX][tT]\\|[pP][aA][rR]\\)\\>" . 'font-lock-variable-name-face) ;; sdef variables
     ("\\<\\([fF][iI][lL][lL]\\|[uU]\\|[lL][aA][tT]\\|[lL][iI][kK][eE]\\|[bB][uU][tT]\\|[tT][rR][cC][lL]\\)\\>" . 'font-lock-variable-name-face) ;; fill,universe,lat,trcl variables
     ("\\<\\([bB][uU][fF][fF][eE][rR]\\|[fF][iI][lL][eE]\\|[mM][aA][xX]\\|[mM][eE][pP][hH]\\|[wW][rR][iI][tT][eE]\\|[eE][vV][eE][nN][tT]\\|[fF][iI][lL][tT][eE][rR]\\|[tT][yY][pP][eE]\\|[cC][eE][lL][lL]\\|[sS][uU][rR][fF][aA][cC][eE]\\|[tT][aA][lL][lL][yY]\\)\\>" . 'font-lock-variable-name-face) ;; ptrac variables
   )
  ;; auto-mode-list  (filename extension to autoload mode e.g.'(".mcn\\'"))
  nil
  ;; function-list
  nil
  ;; description
  "generic mode for editing MCNP input files.")
