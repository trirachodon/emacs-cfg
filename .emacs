
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C language formatting style
 (setq c-default-style "linux"
          c-basic-offset 4)

;;tell emacs where to find packages
(let ((default-directory  "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   ;;'("melpa" . "https://melpa.org/packages")
   t))
(package-initialize)

;;cua mode - improve copy/paste (very useful)
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;;line numbers
(global-linum-mode 1)


;;ido mode and ido vertical mode. 
(ido-mode 1)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-everywhere t)
(setq ido-vertical-show-count t)
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;;smex - M-x improvements
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;autocomplete
(ac-config-default)
(global-auto-complete-mode t)

;;zenburn color scheme
(load-theme 'zenburn t)

;;sublime text style minimap
(minimap-mode 1)
(setq minimap-window-location 'right)

;;cursor beacon behavior
(beacon-mode 1)
(setq beacon-push-mark 35)
(setq beacon-color "#666600")

;; org mode enablement
(require 'org)

;;magit
(global-set-key (kbd "C-x g") 'magit-status)

;;dummy comment
