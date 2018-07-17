;;; 10-coding.el --- コーディングのサポート設定
;;; Commentary:

;;; Code:
(use-package yasnippet
  :config
  (setq yas-snippet-dirs
        '("~/.emacs.d/my-snippets"
          "~/.emacs.d/quelpa/build/yasnippet-snippets/snippets"))
  (yas-global-mode 1))

(use-package company
  :ensure t
  :config
  (define-key company-active-map (kbd "\C-n") 'company-select-next)
  (define-key company-active-map (kbd "\C-p") 'company-select-previous)
  (define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
  (setq company-transformers '(company-sort-by-occurrence))
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)
  (defvar company-mode/enable-yas t
    "Enable yasnippet for all backends.")
  (defun company-mode/backend-with-yas (backend)
    (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))
  (add-to-list 'company-backends 'company-anaconda)
  (add-to-list 'company-backends 'company-shell)
  (global-company-mode 1))

(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (flycheck-pos-tip-mode))

(use-package flyspell
  :init
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'org-mode-hook 'flyspell-mode)
  :config
  (setq-default ispell-program-name "aspell")
  (add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

(use-package ispell
  :config
  (setq-default ispell-program-name "aspell")
  (eval-after-load "ispell"
    '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+"))))

(use-package quickrun
  :bind (("C-x q" . quickrun)
         ("C-x a" . quickrun-with-arg)))

(use-package dumb-jump
  :bind (("M-." . dumb-jump-quick-look)
         ("M-n" . dumb-jump-go)
         ("M-p" . dumb-jump-back))
  :config (dumb-jump-mode)
  (setq dumb-jump-default-project "")
  (setq dumb-jump-max-find-time 10)
  (setq dumb-jump-selector 'ivy))

;; 括弧の色付け
(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; 変数などの色付け
(use-package symbol-overlay
  :bind ("M-i" . symbol-overlay-put)
  :config
  (add-hook 'prog-mode-hook #'symbol-overlay-mode)
  (add-hook 'markdown-mode-hook #'symbol-overlay-mode))

(use-package pcre2el :config (setq rxt-global-mode t))

(use-package migemo
  :if (executable-find "cmigemo")
  :config
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs" "-i" "\g"))
  (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)

  (setq migemo-use-pattern-alist t)
  (setq migemo-use-frequent-pattern-alist t)
  (setq migemo-pattern-alist-length 1000)

  (load-library "migemo")
  (migemo-init))

(use-package smartparens-config
  :config
  (smartparens-global-mode t))

(use-package git-gutter
  :config
  (global-git-gutter-mode +1))

;;; 10-coding ends here
