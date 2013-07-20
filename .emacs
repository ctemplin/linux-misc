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
(setq tramp-default-method "ssh")

(add-to-list 'tramp-default-proxies-alist '("sudoprod\\'"  "\\`root\\'" "/ssh:lockify@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudocomplyify\\'"  "\\`root\\'" "/ssh:ubuntu@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudonewdev\\'"  "\\`root\\'" "/ssh:systemicist@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudotechnav\\'"  "\\`root\\'" "/ssh:systemicist@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudotechnavtemp\\'"  "\\`root\\'" "/ssh:systemicist@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudonewdevold\\'"  "\\`root\\'" "/ssh:systemicist@%h:"))
(add-to-list 'tramp-default-proxies-alist '("sudodev\\'"  "\\`root\\'" "/ssh:lockify@%h:"))


(add-to-list 'load-path "~/.emacs.d/elpa/bookmark+-20130108.444")
(require 'bookmark+)

(add-to-list 'load-path "~/.emacs.d/elpa/dired+-20130206.1702")
(require 'dired+)

;; Fuzzy-match
(require 'fuzzy-match)

;; hilight current line
;;(global-hl-line-mode 1)

(recentf-mode 1)

;; itail
(add-to-list 'load-path "~/.emacs.d/elpa/itail-20130102.1159/")
(require 'itail)

;; undo-tree
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20130516.8/")
(require 'undo-tree)




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

(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))
(global-set-key "\C-cu" 'backward-kill-line) ;; `C-c u'

;; ========== Support Wheel Mouse Scrolling ==========
(when (fboundp 'mouse-wheel-mode)
  (mouse-wheel-mode t)
)

;; ========== Android for Emacs ==================
(progn (setq android-sdk-root-path "/home/ctemplin/android-sdk-linux"))
(setq android-default-package "com.zxy")

(add-to-list 'load-path "/home/ctemplin/android-emacs-toolkit")
(require 'androidmk-mode)
(add-hook 'androidmk-mode-hook
          (lambda ()
            (progn 
                   (local-set-key [C-f5] 'androidsdk-build)
                   (local-set-key [C-S-f5] 'androidsdk-rebuild)
                   )))
 

;; ================ Icicles =======================\\
(add-to-list 'load-path "~/.emacs.d/icicles")
(require 'icicles)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/Documents/lockify/webapp/media/scripts/.emacs.bmk")
 '(bookmark-version-control t)
 '(case-fold-search t)
 '(desktop-save-mode t)
 '(ede-project-directories (quote ("/home/ctemplin/Documents/lockify/webapp")))
 '(global-hl-line-mode t)
 '(grep-find-ignored-directories (quote ("chrome_ext/builds" "checksummed" "_git_publish_media" "unpublished" "lib" "chrome_app/builds" "chrome_ext/builds")))
 '(hl-line-sticky-flag nil)
 '(icicle-buffer-configs (quote (("lockify_javascript" "*.js" "*.py" nil nil nil) ("All" nil nil nil nil icicle-case-string-less-p) ("Files" nil nil (lambda (bufname) (buffer-file-name (get-buffer bufname))) nil icicle-case-string-less-p) ("Files and Scratch" nil nil (lambda (bufname) (buffer-file-name (get-buffer bufname))) ("*scratch*") icicle-case-string-less-p) ("All, *...* Buffers Last" nil nil nil nil icicle-buffer-sort-*\.\.\.*-last))))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 40 48 56 64 72 80 88 96 104 112 120)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;  '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 83 :width normal)))))
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 83 :width normal)))))

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

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))


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


;; ============== YaSnippet ================\\
(require 'yasnippet)

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
(put 'narrow-to-region 'disabled nil)


;; ============== ModeLine stuff =================\\
(setq uniquify-buffer-name-style 'forward)
(require 'uniquify)

;; Uniquify file name with path differences instead of the default <2>, <3>
(setq-default mode-line-buffer-identification
  `(:eval
    (let ((s (format-mode-line
              (propertized-buffer-identification (buffer-name)))))
      (when (and (boundp 'uniquify-managed) uniquify-managed)
        (unless (string= (buffer-name) (uniquify-buffer-base-name))
          (let ((base-len (length (uniquify-buffer-base-name)))
                (full-len (length (buffer-name)))
                (pre (eq uniquify-buffer-name-style 'forward)))
            (let ((start (if pre 0 base-len))
                  (end (if pre (- full-len base-len) full-len)))
              (set-text-properties start end nil s)))))
      s)))
