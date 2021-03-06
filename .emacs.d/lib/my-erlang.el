(require-package 'edts)

(add-to-list 'exec-path "/usr/lib64/erlang/bin")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Indentation
(add-to-list 'safe-local-variable-values '(erlang-indent-level . 2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EDTS
;(add-to-list 'load-path "~/src/edts")
(require 'edts-start)

;; (edts-log-set-level 'debug)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffer setup
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)
(defun my-erlang-mode-hook ()
  (setq erlang-next-lines-empty-threshold 1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set face of exported functions
(when (boundp 'erlang-font-lock-exported-function-name-face)
  (set-face-attribute 'erlang-font-lock-exported-function-name-face nil
                      :underline t))

(defun erl-print ()
  (interactive)
  (if (symbol-at-point)
      (erl-print-var)
    (erl-print-line)))

(defun erl-print-var ()
  (let ((var (symbol-at-point)))
    (erl-print-str
     (format (concat "io:fwrite(user, <<\"~p ~p ~p: %s = ~p~n\">>, "
                     "[self(), ?MODULE, ?LINE, %s])")
             var
             var))))

(defun erl-print-res ()
  (interactive)
  (erl-print-str
   "io:fwrite(user, <<\"~p ~p ~p: ~p~n\">>, [self(), ?MODULE, ?LINE, $])")
  (search-backward "$")
  (delete-char 1))

(defun erl-print-line ()
  (erl-print-str
   "io:fwrite(user, <<\"~p ~p ~p~n\">>, [self(), ?MODULE, ?LINE])"))

(defun erl-print-str (str)
  (end-of-line)
  (setq str (maybe-append-separator str))
  (unless (empty-line-p)
    (maybe-insert-preceeding-comma)
    (newline-and-indent))
  (insert str))

(defun maybe-insert-preceeding-comma ()
  (cond
   ((looking-back ",\\|->\\|\s-*of") (ignore))
   ((looking-back ";") (delete-char -1) (insert ","))
   (t                  (insert ","))))

(defun maybe-append-separator (str)
  (cond ((looking-back "\\(,\\|->\\)") (concat str ","))
        ((looking-back ";")      (concat str ";"))
        (t                       str)))
