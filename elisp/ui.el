;; ui.el

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" default)))
 '(tool-bar-mode nil)
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "#FF0000" :foreground "#272822" :inverse-video t)))))
(set-face-attribute 'default nil :height 120)
(global-hl-line-mode +1)
(set-face-attribute 'region nil :background "#ebebeb")
(global-linum-mode 1)
(show-paren-mode 1)
(require 'column-marker)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default tab-width 2)
(setq css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq-default indent-tabs-mode nil)
(add-hook 'prog-mode-hook 'highlight-indentation-mode)
(setq-default truncate-lines t)
(add-hook 'emacs-startup-hook
	(lambda () (split-window-right)))

(setq visible-bell 1)

(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
	(lambda () (rainbow-mode 1)))
(my-global-rainbow-mode 1)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(set-face-attribute 'neo-button-face nil     :height 100)
(set-face-attribute 'neo-file-link-face nil  :height 100)
(set-face-attribute 'neo-dir-link-face nil   :height 100)
(set-face-attribute 'neo-header-face nil     :height 100)
(set-face-attribute 'neo-expand-btn-face nil :height 100)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'"  .  web-mode))
