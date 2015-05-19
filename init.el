;; init.el

(add-to-list 'load-path "~/.emacs.d/elisp/")

(defvar my-load-libs
	'(
		"my-packages"
		"ui"
		"nav"
		"keys"
	))

(dolist (p my-load-libs)
	(load-library p))

(global-auto-revert-mode 1)