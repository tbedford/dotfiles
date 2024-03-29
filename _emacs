(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(display-time)
(cua-mode t)
(setq require-final-newline t) ;; Should be default but belt and braces for all modes!!
(global-hl-line-mode +1)
(delete-selection-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(show-paren-mode 1)

(setq-default indent-tab-width 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; fuzzy file opening
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(ido-mode t)

(defalias 'list-buffers 'ibuffer)

(setq backup-directory-alist (quote ((".*" ."~/.emacs.d/backups/"))))

;; get hash key working on Apple Mac!
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; Terminal Emacs
(global-set-key [27 up] (quote beginning-of-buffer))
(global-set-key [27 down] (quote end-of-buffer))

;; Desktop Emacs
(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)

;; Also convenient
(global-set-key (kbd "M-,") 'beginning-of-buffer)
(global-set-key (kbd "M-.") 'end-of-buffer)

;; Custom keymaps
(global-set-key "\C-cl" 'goto-line)
(global-set-key "\C-ct" 'ansi-term)
(global-set-key "\C-cs" 'shell)
(global-set-key "\C-ch" 'help)


;; C/C++ indentation
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
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; GitHub favoured markdown
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
;;(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

;; AsciiDoc mode
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;; Textile mode
(add-to-list 'auto-mode-alist (cons "\\.textile\\'" 'textile-mode))

;; YAML mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; MXML mode for XML editing
(setq-default nxml-slash-auto-complete-flag 1)

;; add .dita extension
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|dita\\|ditamap\\)\\'" . nxml-mode)
            auto-mode-alist))

