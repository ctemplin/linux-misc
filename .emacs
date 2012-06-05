(add-to-list 'load-path "~/.emacs.d")

 ;; (autoload 'install "install" "" t)

(when (fboundp 'windmove-default-keybindings)
  ;; Use shift+arrow to switch window
  (windmove-default-keybindings)
  ;; extra command to properly set the up arrow
  (global-set-key (kbd "<select>") 'windmove-up)
  ;; 'wrap' the move commands to the other side
  (setq windmove-wrap-around t)
)
;; auto-complete.el
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs.d//ac-dict")
(ac-config-default)

(require 'puppet-mode)

;; js2-mode.el
(setq load-path (append (list (expand-file-name "~/.emacs.d/js2")) load-path))
(autoload 'js2-mode "js2-20090723b" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Tramp - remote file editing
(require 'tramp)
(setq tramp-default-method "scp")

;; hilight current line
;;(global-hl-line-mode 1)


;; ============== Default Modes ===================\\
;; Replace region when yanking
(delete-selection-mode 1)

;; ============== Color themes =====================\\
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)



;; ============== Key Bindings =====================\\
(global-set-key [insert]    'overwrite-mode) ; [Ins] 

(autoload 'goto-last-change "goto-last-change" "Set point to the position of the last change." t)
(global-set-key "\C-x\C-\\" 'goto-last-change)

(global-set-key "\C-\M-l" 'goto-line) ; [Ctrl]-[Meta]-[L] 

;; ========== Support Wheel Mouse Scrolling ==========
(when (fboundp 'mouse-wheel-mode)
  (mouse-wheel-mode t)
)

;; ================ Icicles =======================\\
(add-to-list 'load-path "~/.emacs.d/icicles")
(require 'icicles)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(grep-find-ignored-directories (quote ("chrome_ext/builds" "checksummed" "_git_publish_media" "unpublished")))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 83 :width normal)))))

(windmove-default-keybindings)         ; shifted arrow keys

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
;;(global-set-key (kbd "C-d") 'duplicate-line)



;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;; (when
;;     (load
;;      (expand-file-name "~/.emacs.d/elpa/package.el"))
;;   (package-initialize))


;; ============= Mode Customizations =============\\
;;; Set HTML tabs to use spaces
(add-hook 'html-mode-hook
  (lambda()
    (setq sgml-basic-offset 4)
    (setq indent-tabs-mode nil)))
;;; Set Javascript tabs to use spaces
(add-hook 'javascript-mode-hook
  (lambda()
    (setq sgml-basic-offset 4)
    (setq indent-tabs-mode nil)))
(put 'dired-find-alternate-file 'disabled nil)


;; ============== XClip ======================\\
(load-file "~/.emacs.d/xclip.el")

;; ============== Windows / Revive ==============\\
(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

(require 'revive)
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)



;; ============= Misc =================\\
(defun whack-whitespace (arg)
  "Delete all white space from point to the next word.  With prefix ARG
delete across newlines as well.  The only danger in this is that you
don't have to actually be at the end of a word to make it work.  It
skips over to the next whitespace and then whacks it all to the next
word."
  (interactive "P")
  (let ((regexp (if arg "[ \t\n]+" "[ \t]+")))
    (re-search-forward regexp nil t)
    (replace-match "" nil nil)))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
