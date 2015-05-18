;; nav.el

(exec-path-from-shell-initialize)
(add-hook 'after-init-hook 'global-company-mode)
(projectile-global-mode)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(nyan-mode 1)
(scroll-bar-mode -1)