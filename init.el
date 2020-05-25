(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; Install and configure use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq-default
   use-package-verbose t
   use-package-always-defer t
   use-package-always-ensure t)

;; Use latest Org
(use-package org :ensure org-plus-contrib)

;; Load rest via tangle
(org-babel-load-file (expand-file-name "al.org" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-bullets smart-mode-line solarized-theme helm-projectile helm org-plus-contrib use-package))))
