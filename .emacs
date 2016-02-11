(load-file "~/.emacs.d/init.el")
(load-file "~/prj/ot/dot-file/.emacs")
(add-to-list 'load-path "/usr/local/Cellar/mu/HEAD/share/emacs/site-lisp/mu4e")
(add-to-list 'load-path "~/prj/ot/dot-file/site-lisp")
(rc-init-emacs)
(rc-look-and-feel)
(rc-emacs-master)
(rc-init-site-lisp)

(setq initial-frame-alist '((top . 0) (left . 0) (width . 150) (height . 50)))
(global-hl-line-mode 0)
(setq-default cursor-type 'bar)
(set-cursor-color "black")
(blink-cursor-mode 1)
(set-face-attribute 'default nil :height 110)

(setq nrepl-hide-special-buffers t)

(split-window-right)
