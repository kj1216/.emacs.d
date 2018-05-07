;;; my-packages.el --- packageのリスト
;;; Commentary:

(require 'quelpa)

;;; Code:
;; misc
(quelpa 'use-package)
(quelpa 'bind-key)
(quelpa 'init-loader)
(quelpa 'exec-path-from-shell)

;; appearance
(quelpa 'popwin)
(quelpa 'smartparens)
(quelpa 'rainbow-delimiters)
(quelpa 'highlight-defined)
(quelpa 'symbol-overlay)
(quelpa 'swap-buffers)
(quelpa 'origami)
(quelpa 'which-key)
(quelpa 'rainbow-mode)
(quelpa 'perspeen)
(quelpa 'all-the-icons)
(quelpa 'telephone-line)
(quelpa 'dashboard)
(quelpa 'fringe-current-line)

;; theme
(quelpa 'nord-theme)

;; coding
(quelpa 'yasnippet)
(quelpa 'yasnippet-snippets)
(quelpa 'company)
(quelpa 'flycheck)
(quelpa 'flycheck-pos-tip)
(quelpa 'quickrun)
(quelpa 'dumb-jump)
(quelpa 'wgrep)

;; editing
(quelpa 'multiple-cursors)
(quelpa 'expand-region)
(quelpa 'anzu)
(quelpa 'undo-tree)
(quelpa 'migemo)
(quelpa 'avy)
(quelpa 'avy-migemo)
(quelpa 'pcre2el)
(quelpa 'multi-term)
(quelpa '(other-window-or-split :fetcher github :repo "conao/other-window-or-split"))

;; file
(quelpa 'wdired)
(quelpa 'neotree)
(quelpa 'open-junk-file)

;; version control
(quelpa 'magit)
(quelpa 'gitconfig-mode)
(quelpa 'gitignore-mode)
(quelpa 'git-gutter)
(quelpa 'git-timemachine)
(quelpa 'projectile)

;; completion interface
(quelpa 'counsel)
(quelpa 'ivy)
(quelpa 'swiper)

;; prog modes
(quelpa 'swift-mode)
(quelpa 'haskell-mode)
(quelpa 'ansible)
(quelpa 'web-mode)
(quelpa 'js2-mode)
(quelpa 'web-beautify)
(quelpa 'tern)
(quelpa 'add-node-modules-path)
(quelpa 'company-tern)
(quelpa 'yaml-mode)
(quelpa 'anaconda-mode)
(quelpa 'company-anaconda)
(quelpa 'csharp-mode)
(quelpa 'stylus-mode)

;; doc modes
(quelpa 'markdown-mode)
(quelpa 'ox-hugo)

;; other modes
(quelpa 'edbi)
(quelpa 'company-edbi)
(quelpa 'ssh-config-mode)

;; languages
(quelpa 'codic)

;;; my-packages.el ends here
