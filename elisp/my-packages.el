;; my-packages.el

(require 'package)
(add-to-list 'package-archives   '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'cl)

(defvar required-packages
	'(
		column-marker
		company
		exec-path-from-shell
		git-gutter
		hl-indent
		ido-vertical-mode
		monokai-theme
		multiple-cursors
		neotree
		nyan-mode
		projectile
		rainbow-mode
		scss-mode
		web-mode
	) "a list of packages to ensure are installed at launch.")

(defun packages-installed-p ()
	(loop for p in required-packages
				when (not (package-installed-p p)) do (return nil)
				finally (return t)))

(unless (packages-installed-p)
	(message "%s" "Emacs is now refreshing its package database...")
	(package-refresh-contents)
	(message "%s" " done.")
	(dolist (p required-packages)
		(when (not (package-installed-p p))
			(package-install p))))