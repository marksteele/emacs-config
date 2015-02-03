(require-package 'php-mode)
(require 'php-mode)
(setq php-template-compatibility nil)

(require-package 'php-extras)
(require 'php-extras)
(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

(require-package 'web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(defun my-web-mode-hook ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(add-hook 'web-mode-hook  'my-web-mode-hook)

