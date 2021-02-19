(require-package 'racket-mode)
(require-package 'lsp-mode)
(push '("\\.rkt\\'" . racket-mode) auto-mode-alist)
(add-hook 'racket-mode-hook 'racket-smart-open-bracket-mode)

;; Seup lsp mode
(with-eval-after-load 'lsp-mode
;; enable log only for debug
(setq lsp-log-io nil)
;; use `evil-matchit' instead
(setq lsp-enable-folding nil)
;; no real time syntax check
(setq lsp-diagnostic-package :none)
;; handle yasnippet by myself
(setq lsp-enable-snippet nil)
;; use `company-ctags' only.
;; Please note `company-lsp' is automatically enabled if it's installed
(setq lsp-enable-completion-at-point nil)
;; turn off for better performance
(setq lsp-enable-symbol-highlighting nil)
;; use find-fine-in-project instead
(setq lsp-enable-links nil)
;; auto restart lsp
(setq lsp-restart 'auto-restart)
;; don't watch 3rd party javascript libraries
(push "[/\\\\][^/\\\\]*\\.\\(json\\|html\\|jade\\)$" lsp-file-watch-ignored)
;; don't ping LSP language server too frequently
(defvar lsp-on-touch-time 0)
(defun my-lsp-on-change-hack (orig-fun &rest args)
;; do NOT run `lsp-on-change' too frequently
(when (> (- (float-time (current-time))
lsp-on-touch-time) 120) ;; 2 mins
(setq lsp-on-touch-time (float-time (current-time)))
(apply orig-fun args)))
(advice-add 'lsp-on-change :around #'my-lsp-on-change-hack))

;; My custom font setting
(custom-set-faces
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#1d1f21" :foreground "#c5c8c6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "nil" :family "Menlo")))))
