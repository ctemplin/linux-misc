(add-to-list 'load-path "~/emacs.d")

(autoload 'goto-last-change "goto-last-change" "Set point to the position of the last change." t)
(global-set-key "\C-x\C-\\" 'goto-last-change)


;; hilight current line
(global-hl-line-mode 1)

;; ========== Support Wheel Mouse Scrolling ==========
;;(mouse-wheel-mode t)
