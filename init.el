;; Add local .emacs.d folder to the load-path
(add-to-list 'load-path "~/.emacs.d/add-ons/")

;; Show line numbers always
(global-linum-mode t)

;; Enable fill-column-indicator mode
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "orange3")

(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'js-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'fci-mode)

;; Choose the deeper blue theme
(load-theme 'deeper-blue t)

;; bs-show as default buffer change
(global-set-key (kbd "C-x C-b") 'bs-show)

;; Enable scss-mode
(add-to-list 'load-path "~/.emacs.d/scss-mode/")
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq-default scss-compile-at-save nil)

;; Javascript default indent 2 spaces
(setq js-indent-level 2)

;; Indent as spaces
(setq-default indent-tabs-mode nil)

;; Remove whitespaces on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable NeoTree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key (kbd "C-`") 'neotree-toggle)
