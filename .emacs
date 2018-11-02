;;package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; basics
(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(display-time)
(cua-mode t)
(setq require-final-newline t) ;; Should be default but belt and braces for all modes!!

;; Tabs
(setq-default indent-tab-width 4)
(setq-default tab-width 4)

;; Force spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; ibuffer
(defalias 'list-buffers 'ibuffer)

;; backup directory
(setq backup-directory-alist (quote ((".*" ."~/.emacs.d/backups/"))))

;; get hash key working on Apple Mac!
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; M-up and M-down start of buffer/end of buffer
;; Notes:
;; 1) Only works in Desktop Emacs on Mac if in Mac keyboard system settings you set Option key to Escape key
;; 2) You then need to switch off 'Use option key as Meta' in Terminal config for this to work in Terminal and Desktop
(global-set-key [27 up] (quote beginning-of-buffer))
(global-set-key [27 down] (quote end-of-buffer))

;; Custom keymaps
(global-set-key "\C-cl" 'goto-line)
(global-set-key "\C-ct" 'ansi-term)
(global-set-key "\C-cs" 'shell)
(global-set-key "\C-ch" 'help)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

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

;; YAML mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; MXML mode for XML editing
(setq-default nxml-slash-auto-complete-flag 1)

;; add .dita extension
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|dita\\|ditamap\\)\\'" . nxml-mode)
            auto-mode-alist))

;; HERE BE DRAGONS
;; installed packages
;; Note themes are listed *after* installed packages area so they can be trusted

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" "cf284fac2a56d242ace50b6d2c438fcc6b4090137f1631e32bedf19495124600" "af717ca36fe8b44909c984669ee0de8dd8c43df656be67a50a1cf89ee41bde9a" "01e067188b0b53325fc0a1c6e06643d7e52bc16b6653de2926a480861ad5aa78" "d61f6c49e5db58533d4543e33203fd1c41a316eddb0b18a44e0ce428da86ef98" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "158013ec40a6e2844dbda340dbabda6e179a53e0aea04a4d383d69c329fba6e6" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" default)))
 '(package-selected-packages
   (quote
    (projectile badwolf-theme bbcode-mode magit php-mode yaml-mode sublime-themes markdown-mode airline-themes powerline adoc-mode))))
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
(require 'airline-themes)
(load-theme 'airline-light)
;;(load-theme 'airline-dark)
;;(load-theme 'airline-wombat)
;;(load-theme 'airline-kalisi)
;;(load-theme 'airline-kolor)

;;(load-theme 'dorsey t)
;;(load-theme 'wheatgrass t)
;;(load-theme 'hickey t)
;;(load-theme 'manoj-dark t)
;;(load-theme 'tango-dark t)
;;(load-theme 'badwolf t)
;;(load-theme 'fogus t) 
;;(load-theme 'graham t)
;;(load-theme 'misterioso t) 

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
