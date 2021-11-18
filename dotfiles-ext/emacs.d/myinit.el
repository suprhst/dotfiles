(setq use-package-always-ensure t)
(global-display-line-numbers-mode)

(setq display-time-default-load-average nil)
(display-battery-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package org-superstar
  :config
  (setq org-superstar-special-todo-items t)
  (add-hook 'org-mode-hook (lambda ()
			     (org-superstar-mode 1))))
(setq initial-major-mode 'org-mode)
(setq org-hide-emphasis-markers t)

(use-package org-appear
  :hook (org-mode . org-appear-mode))

(setq org-pretty-entities t)

(setq org-startup-with-inline-images t
      org-image-actual-width '(600))

(setq org-src-fontify-natively t)

(setq org-src-tab-acts-natively t)
(add-to-list 'org-structure-template-alist
	     '("el" . "src emacs-lisp"))

;; ido for suggestions
;;(setq ido-everywhere t)
;;(setq ido-enable-flex-matching t)
;;(ido-mode t)

;; (use-package doom-modeline
;;   :ensure t
;;   :hook (after-init . doom-modeline-mode))
;; (setq doom-modeline-project-detection 'auto)
;; (setq doom-modeline-buffer-file-name-style 'auto)
;; (setq doom-modeline-icon (display-graphic-p))
;; (setq doom-modeline-major-mode-icon t)
;; (setq doom-modeline-major-mode-color-icon t)
;; (setq doom-modeline-buffer-state-icon t)
;; (setq doom-modeline-buffer-modification-icon t)
;; (setq doom-modeline-workspace-name t)
;; (setq doom-modeline-persp-name t)
;; (setq doom-modeline-persp-icon t)

(use-package all-the-icons
  :ensure t)

;;(use-package auto-complete
;;  :ensure t
;;  :init
;;  (progn
;;    (ac-config-default)
;;    (global-auto-complete-mode t)))

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package dashboard
  :ensure t
  :init
  (progn
    (setq dashboard-center-content t)
    (setq dashboard-startup-banner "~/Downloads/l.png")
    (setq dashboard-set-file-icons t)
    (setq dashboard-banner-logo-title " Remember VIM Is Always Better  ")
    (setq dashboard-set-heading-icon t))
  :config
  (dashboard-setup-startup-hook))

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (auto-package-update-maybe))

(use-package expand-region
  :ensure t
  :bind
  ("C-=" . er/expand-region)
  ("C--" . er/contract-region))

(use-package treemacs
  :ensure t
  :bind
  (:map global-map
       ([f8] . treemacs))
  :config
  (setq treemacs-is-never-other-window t))

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-x p") 'Projectile-command-map)
  (projectile-mode +1))

(use-package treemacs-projectile
  :ensure t)

(use-package ace-window
:ensure t
:init
(progn
(global-set-key [remap other-window] 'ace-window)
(custom-set-faces
'(aw-leading-char-face
((t (:inherit ace-jump-face-foreground :height 3.0)))))
))

(winner-mode 1)

(use-package flycheck
:ensure t
:init
(global-flycheck-mode t))

(use-package avy
:ensure t
:bind ("M-s" . avy-goto-char))

(use-package counsel
:ensure t
)

(use-package swiper
:ensure try
:config
(progn
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
))



;; Ivy POsframe

(use-package ivy-posframe)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
(ivy-posframe-mode 1)

;; Marginalia

(use-package marginalia)
(marginalia-mode +1)

(use-package keycast
:config

(define-minor-mode keycast-mode
  "Show current command and its key binding in the mode line."
  :global t
  (if keycast-mode
      (add-hook 'pre-command-hook 'keycast--update t)
    (remove-hook 'pre-command-hook 'keycast--update)))
(add-to-list 'global-mode-string '("" mode-line-keycast " "))
(keycast-mode))

(use-package treemacs-icons-dired
:hook (dired-mode . treemacs-icons-dired-enable-once)
:ensure t)

(use-package python-mode)
(use-package elpy)
(elpy-enable)
(add-hook 'elpy-mode-hook 'flycheck-mode)
(use-package py-autopep8)
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(use-package company-jedi)
(add-to-list 'company-backends 'company-jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(use-package exotica-theme
 :ensure t)

(use-package ox-reveal
  :ensure t)
(setq  org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js")
(use-package htmlize
  :ensure t)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/orgroam"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))
(setq org-roam-v2-ack t)

;; Improve Start

;; Using garbage magic hack.
 (use-package gcmh
   :config
   (gcmh-mode 1))
;; Setting garbage collection threshold
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

(use-package smartparens
 :ensure t)
(smartparens-mode t)

(use-package mode-icons
:demand t
:config
(mode-icons-mode))

(use-package all-the-icons-dired
  :ensure t
  :custom-face (all-the-icons-dired-dir-face ((t (:foreground nil))))
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package all-the-icons-ivy
  :ensure t
  :demand t
  :config
  (setq all-the-icons-ivy-file-commands
        '(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir))
  (all-the-icons-ivy-setup))

(use-package minions
:config
(setq minions-mode-line-lighter "⚙"
      minions-mode-line-delimiters (cons "" ""))
(minions-mode 1))
(use-package moody
:config
(setq x-underline-at-descent-line t)
(moody-replace-mode-line-buffer-identification)
(moody-replace-vc-mode))

(use-package websocket
  :ensure t)
(use-package simple-httpd
  :ensure t)
(use-package f
  :ensure t)
(use-package org-roam-ui
  :ensure t)
(add-to-list 'load-path "~/.emacs.d/private/org-roam-ui")
(load-library "org-roam-ui")
