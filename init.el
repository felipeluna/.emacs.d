(load "~/.emacs.d/init-packages")

;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))
(package-initialize)

;;             _ __                       __
;;  ___ _   __(_) /  ____ ___  ____  ____/ /__
;; / _ \ | / / / /  / __ `__ \/ __ \/ __  / _ \
;;/  __/ |/ / / /  / / / / / / /_/ / /_/ /  __/
;;\___/|___/_/_/  /_/ /_/ /_/\____/\__,_/\___/

;; theme
(load-theme 'zenburn t)

(set-face-attribute 'default nil
		    :family "Source Code Pro" :height 150 :weight 'normal)

;; evil mode stuff
(require 'evil)
(evil-mode 1)
(evil-escape-mode 1)

;; keybinds
(define-key evil-ex-map "b" 'helm-buffers-list)
(define-key evil-ex-map "e" 'find-file)

;;achar um método melhor
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; Enable evil-commentary
(evil-commentary-mode)

;;Change cursor color depending on mode
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("white" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("green" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("green" hollow))

;; <M-up> and <M-down> to move around
(drag-stuff-global-mode 1)

;; save all the backups files to a folder
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;; Delete spaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; setup variables
(custom-set-variables
 '(inhibit-startup-screen t))

;Disable menu-bar
(menu-bar-mode -1)

;Disable tool-bar
(tool-bar-mode -1)

;Disable scroll-bar
(scroll-bar-mode -1)

;Enable column-number mode
(column-number-mode)

;Enable show-paren-mode
(show-paren-mode)

;; Startup windows size.
(add-to-list 'default-frame-alist '(height . 34))
(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(top . 34))
(add-to-list 'default-frame-alist '(left . 70))

;; NeoTree
(require 'neotree)
(global-set-key (kbd "M-n")'neotree-toggle)
(setq neo-smart-open t)
(add-hook 'neotree-mode-hook
	(lambda ()
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
;; show window number
(require 'window-number)
(window-number-mode)
;; windows movement
(require 'window-numbering)
;; highlight the window number in pink color
(custom-set-faces '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold)))))
(window-numbering-mode 1)







;; list of packages installed

;; (zenburn-theme zenburn-theme drag-stuff evil-commentary evil goto-chg undo-tree evil-escape evil goto-chg undo-tree evil-leader evil goto-chg undo-tree evil-textobj-anyblock evil goto-chg undo-tree goto-chg goto-last-change helm helm-core async popup async helm-core async neotree popup solarized-theme dash undo-tree)
