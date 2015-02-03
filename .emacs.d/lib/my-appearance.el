;; ?
(global-font-lock-mode t)

;; Turn stuff on
(global-linum-mode 1)

;; Line numbers
(line-number-mode 1)

;; Column numbers
(column-number-mode 1)

;; highlight matching parantheses
(show-paren-mode t)

;; Show trailing whitespace
(setq-default show-trailing-whitespace t)

;; Overwrite highlighted area when typing
(transient-mark-mode t)
(delete-selection-mode t)

;; Remove toolbar
(if (featurep 'tool-bar)   (tool-bar-mode   -1))

;; Remove tabbar
(if (featurep 'tabbar)     (tabbar-mode     -1))

;; Remove tooltip ... need?
(if (featurep 'tooltip)    (tooltip-mode    -1))

;; Remove scrollbar
(if (featurep 'scroll-bar) (scroll-bar-mode -1))

;; Remove menubar
(if (featurep 'menu-bar)   (menu-bar-mode   -1))

;; Right fringe?
(set-frame-parameter nil 'right-fringe 1)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Column marker to show when text crosses column 80
(require 'column-marker)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-3 80)))

;; Do not highlight current line
(global-hl-line-mode 0)

(setq-default whitespace-mode 1)
(setq whitespace-style       (quote (face tabs tab-mark lines-tail)))
(setq whitespace-display-mappings '((tab-mark 9 [9655 9] [92 9])))

(setq-default truncate-lines t)
(global-whitespace-mode t)
