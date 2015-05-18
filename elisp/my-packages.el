;; my-packages.el

(defvar required-packages
	'(
		column-marker
		company
		ido-vertical-mode
		multiple-cursors
		neotree
		nyan-mode
		projectile
		rainbow-mode
		scss-mode
		web-mode
	) "a list of packages to ensure are installed at launch.")

(require 'cl)

(defun packages-installed-p ()
	(loop for p in required-packages
				when (not (package-installed-p p)) do (return nil)
				finally (return t)))

(unless (packages-installed-p)
	(message "%s" "Emacs is now refreshing its package database...")
	(package-refresh-contents)
	(message "%s" " done.")
	(dolist (p required-packages)
		(when (not (packages-installed-p p))
			(package-install p))))