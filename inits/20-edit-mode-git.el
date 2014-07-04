(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)

(set-face-background 'magit-item-highlight "#202020")
(set-face-foreground 'magit-diff-add "green")
(set-face-foreground 'magit-diff-del "red")
(set-face-foreground 'magit-diff-file-header "blue")

(defun my/magit-quit-session ()
  (interactive)
  (kill-buffer)
  (delete-window))

(define-key magit-status-mode-map (kbd "q") 'my/magit-quit-session)

(require 'gitconfig-mode)
(require 'gitignore-mode)

