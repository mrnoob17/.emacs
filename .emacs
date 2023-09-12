(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(electric-indent-mode 1)

(setq-default case-fold-search nil)
(setq-default case-replace nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(desktop-save-mode 1)
(setq desktop-path '("."))

(global-whitespace-mode 0)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-default-style "bsd"
      c-basic-offset 4
      c-tab-always-indent 'complete)

(setq blink-matching-delay 0)

(setq show-paren-delay 0)
(show-paren-mode 1)

(set-frame-font "Office Code Pro D 14" nil t)

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq ring-bell-function 'ignore)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wheatgrass))
 '(custom-safe-themes
   '("669b0c23ee436f297bb286f46daeea9b8ec322cb50758e7ad704d68b36271da3" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "ad23ca6289cac4a21fd68d5fe636d6ff82835788c2c322329f18cc1d07ed2ade" "b9ad792cbdeda001b4aa65e24f878333930e42aa0eb3de3c44a431cad568c8a9" "38c4fb6c8b2625f6307f3dde763d5c61d774d854ecee9c5eb9c5433350bc0bef" "3bf336a4b70c64f133d98c0e72105b577ec13d8f6911c34ba97767ee29b0c558" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" default))
 '(package-selected-packages '(peacock-theme ir-black-theme hemisu-theme evil queue)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; evil-mode stuff
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)

(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
(setq evil-ex-search-case 'sensitive)

(setq
 evil-normal-state--cursor '("green" hollow)
 evil-operator-state--cursor '("green" hollow)
 evil-motion-state-cursor '("green" hollow)
 evil-insert-state-cursor '("green" hollow)
 evil-visual-state-cursor '("green" hollow)
 evil-replace-state-cursor '("green" hollow)
)

(add-hook 'evil-normal-state-entry-hook (lambda () (set-face-background 'mode-line "navy blue")))
(add-hook 'evil-normal-state-entry-hook (lambda () (set-face-foreground 'mode-line "grey")))

(add-hook 'evil-insert-state-entry-hook (lambda () (set-face-background 'mode-line "dark green")))
(add-hook 'evil-insert-state-entry-hook (lambda () (set-face-foreground 'mode-line "black")))

(add-hook 'evil-visual-state-entry-hook (lambda () (set-face-background 'mode-line "dark orange")))
(add-hook 'evil-visual-state-entry-hook (lambda () (set-face-foreground 'mode-line "black")))

