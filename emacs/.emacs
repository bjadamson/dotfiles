(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
    package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
    package-archives)
(package-initialize)

;; Load Evil Mode -- All evil-mode customizations should come before we load Evil.
(require 'evil)
(evil-mode 1)
