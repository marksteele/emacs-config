;; save minibuffer history
(setq savehist-file "~/.emacs.d/savehist")
(setq savehist-additional-variables '(kill-ring regexp-search-ring search-ring))
(savehist-mode t)

(setq make-backup-files nil)
(setq create-lockfiles nil)


;; auto-saves
(setq auto-save-dir "~/.emacs.d/autosaves")
(setq auto-save-file-name-transforms
      `((".*" ,auto-save-dir t)))
(setq auto-save-default t)
