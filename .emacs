;;package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; basics
(setq inhibit-splash-screen t)
(display-time)
(cua-mode t)

;; ibuffer
(defalias 'list-buffers 'ibuffer)

;; get hash key working on Apple Mac!
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; backup directory
(setq backup-directory-alist (quote ((".*" ."~/.emacs.d/backups/"))))

;; Custom keymaps
(global-set-key "\C-cl" 'goto-line)
(global-set-key "\C-ct" 'ansi-term)
(global-set-key "\C-cs" 'shell)
(global-set-key "\C-ch" 'help)

;; C-c up and C-c down
(global-set-key [3 up] (quote beginning-of-buffer))
(global-set-key [3 down] (quote end-of-buffer))

;; M-up and M-down
(global-set-key [27 up] (quote beginning-of-buffer))
(global-set-key [27 down] (quote end-of-buffer))

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
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; GitHub favoured markdown
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
;;(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

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
    ("d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" default)))
 '(package-selected-packages
   (quote
    (sublime-themes markdown-mode airline-themes powerline adoc-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

;; powerline
(require 'powerline)
(powerline-default-theme)

;; airline themes
;;(require 'airline-themes)
;;(load-theme 'airline-light)

(load-theme 'hickey t)
;;(load-theme 'manoj-dark t)
