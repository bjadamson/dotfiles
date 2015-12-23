(defun load-packages ()
    (require 'package)
    (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
    (push '("melpa" . "http://melpa.milkbox.net/packages/")
         package-archives)
    (package-initialize))

;; Load Evil Mode -- All evil-mode customizations should come before we load Evil.
(defun load-required-libraries ()
    (require 'evil)
    (evil-mode 1)
    (require 'key-chord)
    (key-chord-mode 1))

(defun bind-key-switch-to-mode (key state)
    ;; Bind 'key' pressed while in insert mode to switch emacs to provided 'state'.
    (key-chord-define evil-insert-state-map key state))

(defun bind-key-set-mode-insert (key)
    ;; This function will bind the key passed in to the emacs function to switch to evil-normal-state (normal mode).
    (bind-key-switch-to-mode key 'evil-normal-state))

(defun turn-on-line-numbers ()
    (add-hook 'prog-mode-hook 'linum-mode))
    ;(global-linum-mode t))

(defun load-my-theme ()
    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
    (load-theme 'hickey t))

(defun enable-global-auto-indent ()
  ;; http://emacsredux.com/blog/2013/03/29/automatic-electric-indentation/
  (electric-indent-mode +1)

(defun enable-global-settings ()
    (turn-on-line-numbers)
    (electric-indent-mode +1)
    (load-my-theme))

(defun set-my-key-bindings ()
    ;; Invokes all the commands to customize the evil mode key bindings.
    (setq key-chord-two-keys-delay 0.2)
    ;`(bind-key-set-mode-insert "jj")
    (define-key evil-normal-state-map (kbd ";") 'evil-ex)
    (define-key evil-insert-state-map (kbd "ESC") (lambda () (interactive) (insert "`")))
    (define-key evil-insert-state-map (kbd "`") 'evil-normal-state))
    ;(define-key evil-normal-state-map [escape] 'keyboard-quit)
    ;(define-key evil-visual-state-map [escape] 'keyboard-quit)
    ;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit))

(load-packages)
(load-required-libraries)
(set-my-key-bindings)
(enable-global-settings)
