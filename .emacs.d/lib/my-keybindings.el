;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; C-k at beginning of line kills the entire line including newline
(setq kill-whole-line 1)

(global-set-key (kbd "C-c p") 'symbol-next)
(global-set-key (kbd "C-c n") 'symbol-previous)

(global-set-key (kbd "C-c P") 'erl-print)
(global-set-key (kbd "C-c M-p") 'erl-print-res)

(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c C-u") 'uncomment-region)

(global-set-key (kbd "C-c i") 'insert-filename)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x M-e") 'eval-buffer)

;; rectangleMark
(global-set-key (kbd "C-x r C-SPC") 'rm-set-mark)
(global-set-key (kbd "C-x r C-x") 'rm-exchange-point-and-mark)
(global-set-key (kbd "C-x r C-w") 'rm-kill-region)
(global-set-key (kbd "C-x r M-w") 'rm-kill-ring-save)

(global-set-key (kbd "C-x M-g") (lambda () (interactive) (goto-long-line 81)))

(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "M-R") 'revert-buffer)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key [s-left] 'windmove-left)     ; move to windnow to the left
(global-set-key [s-right] 'windmove-right)   ; move to window to the right
(global-set-key [s-up] 'windmove-up)         ; move window above
(global-set-key [s-down] 'windmove-down)     ; move window below
(global-set-key (kbd "s-f") 'windmove-right)
(global-set-key (kbd "s-b") 'windmove-left)
(global-set-key (kbd "s-p") 'windmove-up)
(global-set-key (kbd "s-n") 'windmove-down)

;; (global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-x O") #'(lambda () (interactive) (other-window -1)))
;; (global-set-key [C-S-iso-lefttab] #'(lambda () (interactive) (other-window -1)))
(global-set-key (kbd "C-a") 'smart-beginning-of-line)

