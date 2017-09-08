
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-splash-screen t)
(display-time)

(cua-mode t)

;;(standard-display-ascii ?\t "^I")

;; set color theme
;;(load-theme 'tango-dark)


;; get hash key working on Apple Mac!
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; backup directory
(setq backup-directory-alist (quote ((".*" ."~/.emacs.d/backups/"))))

;; Tabs and C modes

(setq-default indent-tab-width 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

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


;; Markdown mode

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "gfm-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; AsciiDoc

(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;; Ruby Mode

(add-to-list 'auto-mode-alist
             '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))


;; MXML mode for XML editing

(setq-default nxml-slash-auto-complete-flag 1)

;; add .dita extension
;;(setq auto-mode-alist
  ;;    (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|dita\\|ditamap\\)\\'" . nxml-mode)
    ;;          auto-mode-alist))

;;(auto-fill-mode 0)

;; Package management

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))


;; set cursor colour
;;(set-cursor-color "#adff2f")
;;(set-cursor-color "yellow")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (adoc-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
