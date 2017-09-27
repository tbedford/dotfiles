;;package management
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; basics
(setq inhibit-splash-screen t)
(display-time)
(cua-mode t)

;; get hash key working on Apple Mac!
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; backup directory
(setq backup-directory-alist (quote ((".*" ."~/.emacs.d/backups/"))))

;; Tabs
(setq-default indent-tab-width 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; C/C++
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

(add-hook 'cc-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

(add-hook 'objc-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

(add-hook 'csharp-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

;; PHP mode
(setq auto-mode-alist
  (cons '("\\.php\\w?" . php-mode) auto-mode-alist))
(autoload 'php-mode "php-mode" "PHP mode." t)

;; Markdown modes
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; GitHub favoured markdown
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; AsciiDoc mode
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;; MXML mode for XML editing
(setq-default nxml-slash-auto-complete-flag 1)

;; add .dita extension
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|dita\\|ditamap\\)\\'" . nxml-mode)
            auto-mode-alist))

;; installed packages
;; Note themes are listed *after* installed packages area so they can be trusted

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" default)))
 '(package-selected-packages (quote (markdown-mode airline-themes powerline adoc-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; powerline
(require 'powerline)
(powerline-default-theme)

;; airline themes
(require 'airline-themes)
(load-theme 'airline-light)
