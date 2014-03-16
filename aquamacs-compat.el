;;; aquamacs-compat.el --- Aquamacs compatibility layer

;; Copyright (C) 2005-2014 David Reitter
;; Copyright (C) 2014 David Holm

;; Author: David Holm <dholmster@gmail.com>
;; Version 0.1

;; This file is not currently part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program ; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; This is an Aquamacs compatibility layer which provides the missing
;; symbols required to use tabbar-mode on other emacsen.

;;; Code:

;;; src/ ;;;

;;; Aquamacs builtin from window.c.
(defvar header-line-inhibit-window-list nil
  "List of windows in which no header line is shown.")


;;; aquamacs/src/site-lisp/macosx/ ;;;

;;; Aquamacs function from mac-extra-functions.el.
;; according to Apple's guidelines, we should
;; always go for "untitled", "untitled 2", ...
(defun mac-new-buffer-name (name &optional n)
  (if (not (get-buffer name))
      name
    (setq n (if n (+ n 1) 2))
    (let ((new-name (concat name " " (int-to-string n))))
      (if (not (get-buffer new-name))
          new-name
        (mac-new-buffer-name name n)))))

(provide 'aquamacs-compat)
;;; aquamacs-compat.el ends here
