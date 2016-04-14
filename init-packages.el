(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)



; list the packages you want
(setq package-list
    '(window-number zenburn-theme drag-stuff evil-commentary evil goto-chg undo-tree evil-escape evil goto-chg undo-tree evil-leader evil goto-chg undo-tree evil-textobj-anyblock evil goto-chg undo-tree goto-chg goto-last-change helm helm-core async popup async helm-core async neotree popup solarized-theme dash undo-tree))


; activate all the packages
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
