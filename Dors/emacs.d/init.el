
;; Package Manager Setup

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Packages

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package try
  :ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
