(require 'color-theme)

(defmacro with-tango-palette (body)
  `(let ((butter1    "#fce94f")
         (butter2    "#edd400")
         (butter3    "#c4a000")
         (orange1    "#fcaf3e")
         (orange2    "#f57900")
         (orange3    "#ce5c00")
         (chocolate1 "#e9b96e")
         (chocolate2 "#c17d11")
         (chocolate3 "#8f5902")
         (chameleon1 "#8ae234")
         (chameleon2 "#73d216")
         (chameleon3 "#4e9a06")
         (skyblue1   "#729fcf")
         (skyblue2   "#3465a4")
         (skyblue3   "#204a87")
         (plum1      "#ad7fa8")
         (plum2      "#75507b")
         (plum3      "#5c3566")
         (scarlet1   "#ef2929")
         (scarlet2   "#cc0000")
         (scarlet3   "#a40000")
         (aluminium1 "#eeeeec")
         (aluminium2 "#d3d7cf")
         (aluminium3 "#babdb6")
         (aluminium4 "#888a85")
         (aluminium5 "#555753")
         (aluminium6 "#2e3436"))
     ,body))

(defun color-theme-tango+ ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   (with-tango-palette
    `(color-theme-tango+

      ((background-mode  . dark)
       (background-color . ,aluminium6)
       (foreground-color . ,aluminium2)
       (border-color     . ,aluminium4)
       (cursor-color     . ,butter1))

      ;;;;;;;;;;;;;;;;;;;;;;;; default faces ;;;;;;;;;;;;;;;;;;;;;;;;;

      (bold ((t (:weight bold))))
      (bold-italic ((t (:inherit bold :inherit italic))))
      (border ((t (:foreground ,aluminium2))))
      ;; (buffer-menu-buffer ((t (nil))))
      (button ((t (:inherit link))))
      ;; (completions-common-part ((t (nil))))
      ;; (completions-first-difference ((t (nil))))
      ;; (cursor ((t (nil))))
      (default ((t (:foreground ,aluminium2))))
      (escape-glyph ((t (:foreground ,scarlet3 :background ,aluminium2 :weight bold))))
      ;; (file-name-shadow ((t (nil))))
      (fixed-pitch ((t (nil))))
      (fringe ((t (:background ,aluminium6))))
      (header-line ((t (:weight bold :underline ,aluminium2))))
      (highlight ((t (:background ,aluminium5 ))))
      (isearch ((t (:foreground ,aluminium6 :background ,orange2))))
      (isearch-fail ((t (:background ,scarlet3))))
      (isearch-lazy-highlight-face ((t (:foreground ,aluminium6 :background ,chocolate1))))
      (italic ((t (nil))))
      (lazy-highlight ((t (:foreground ,chocolate1))))
      (link ((t (:foreground ,skyblue1 :underline t))))
      (link-visited ((t (:foreground ,plum1 :underline t))))
      (match ((t (:foreground ,chameleon1 :weight bold))))
      ;; (menu ((t (nil))))
      (minibuffer-prompt ((t (:foreground ,skyblue1 :weight bold))))
      (mode-line ((t (:foreground ,aluminium6 :background ,skyblue1 :weight bold ))))
      (mode-line-buffer-id ((t (:weight bold))))
      ;; (mode-line-emphasis ((t (nil))))
      (mode-line-highlight ((t (nil))))
      (mode-line-inactive ((t (:foreground ,aluminium2 :background ,aluminium5 :weight bold))))
      ;; (mouse ((t (nil))))
      ;; (next-error ((t (nil))))
      ;; (nobreak-space ((t (nil))))
      ;; (query-replace ((t (nil))))
      (region ((t (:background ,aluminium5))))
      (scroll-bar ((t (nil))))
      (secondary-selection ((t (:background ,plum3))))
      (shadow ((t (:foreground ,aluminium3))))
      (tool-bar ((t (nil))))
      (tooltip ((t (:family ,(face-attribute 'default :family) :foreground ,aluminium2 :background ,aluminium6))))
      (trailing-whitespace ((t (nil))))
      (underline ((t (:underline t))))
      (variable-pitch ((t (nil))))
      (vertical-border ((t (:inherit border))))

      ;;;;;;;;;;;;;;;;;;;;;;;;; comint mode ;;;;;;;;;;;;;;;;;;;;;;;;;;

      (comint-highlight-prompt ((t (:foreground ,skyblue1))))
      (comint-highlight-input ((t (nil))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;; cperl mode ;;;;;;;;;;;;;;;;;;;;;;;;;;

      (cperl-array-face ((t (:foreground ,chocolate1 :weight bold))))
      (cperl-hash-face ((t (:foreground ,orange3 :weight bold))))
      (cperl-nonoverridable-face ((t (:foreground ,chameleon1 :weight bold))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;; font lock ;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (font-lock-builtin-face ((t (:foreground ,skyblue1))))
      (font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
      (font-lock-comment-face ((t (:foreground ,aluminium4))))
      (font-lock-constant-face ((t (:foreground ,chameleon1))))
      (font-lock-doc-face ((t (:foreground ,aluminium4))))
      (font-lock-function-name-face ((t (:foreground ,butter1 :weight bold))))
      (font-lock-keyword-face ((t (:foreground ,skyblue1 :weight bold))))
      (font-lock-negation-char-face ((t (:foreground ,scarlet1 :weight bold))))
      (font-lock-preprocessor-face ((t (:foreground ,orange3))))
      ;; (font-lock-regexp-grouping-backslash ((t (nil))))
      ;; (font-lock-regexp-grouping-construct ((t (nil))))
      (font-lock-string-face ((t (:foreground ,plum1))))
      (font-lock-type-face ((t (:foreground ,chameleon1 :bold f))))
      (font-lock-variable-name-face ((t (:inherit default :weight bold))))
      (font-lock-warning-face ((t (:foreground ,orange2 :weight bold))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;;; ido-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (ido-first-match ((t (:weight bold))))
      (ido-only-match ((t (:foreground ,chameleon1 :weight bold))))
      (ido-subdir ((t (:foreground ,plum1))))
      (ido-incomplete-regexp ((t (:inherit font-lock-warning-face))))
      (ido-indicator ((t (:foreground ,scarlet1 :weight bold))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;; info mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (info-header-node ((t (:weight bold))))
      (info-header-xref ((t (nil))))
      (info-menu-header ((t (:weight bold))))
      (info-menu-star ((t (:foreground ,scarlet1 :weight bold))))
      (info-node ((t (:weight bold))))
      ;; (info-title-1 ((t (nil))))
      ;; (info-title-2 ((t (nil))))
      ;; (info-title-3 ((t (nil))))
      (info-title-4 ((t (:weight bold))))
      (info-xref ((t (:foreground ,skyblue1))))
      (info-xref-visited ((t (:foreground ,plum1))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;;; speedbar ;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (speedbar-button-face ((t (:foreground ,aluminium2 :weight bold))))
      (speedbar-directory-face ((t (:foreground ,chameleon1 :weight bold))))
      (speedbar-file-face ((t (:foreground ,skyblue1))))
      (speedbar-highlight-face ((t (:underline t))))
      (speedbar-selected-face ((t (:weight bold))))
      (speedbar-separator-face ((t (:inherit mode-line))))
      (speedbar-tag-face ((t (nil))))

      ;;;;;;;;;;;;;;;;;;;;;;;; makefile mode ;;;;;;;;;;;;;;;;;;;;;;;;;

      (makefile-makepp-perl ((t (:foreground ,skyblue1 :background ,aluminium6))))
      (makefile-space ((t (:background ,aluminium5))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;;;; auctex ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (font-latex-bold-face ((t (:inherit bold))))
      (font-latex-doctex-documentation-face ((t (:background ,aluminium5))))
      (font-latex-italic-face ((t (:inherit italic))))
      (font-latex-math-face ((t (nil))))
      (font-latex-sectioning-5-face ((t (:foreground ,plum1 :weight bold))))
      (font-latex-sedate-face ((t (:foreground ,skyblue1))))
      (font-latex-slide-title-face ((t (:inherit font-latex-sectioning-0-face))))
      (font-latex-string-face ((t (:inherit font-lock-string-face))))
      (font-latex-subscript-face ((t (:height 0.8))))
      (font-latex-superscript-face ((t (:height 0.8))))
      (font-latex-verbatim-face ((t (:inherit default))))
      (font-latex-warning-face ((t (:foreground ,orange2 :weight bold))))
      (preview-face ((t (nil))))
      (preview-reference-face ((t (nil))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;; customize ;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (custom-button ((t (:background ,aluminium5 :box (:line-width 1 :style released-button)))))
      (custom-button-mouse ((t (:inherit custom-button :box (:line-width 1 :style released-button)))))
      (custom-button-pressed ((t (:inherit custom-button :box (:line-width 1 :style pressed-button)))))
      (custom-button-pressed-unraised ((t (:inherit custom-button :box (:line-width 1 :style pressed-button)))))
      (custom-button-unraised ((t (:inherit custom-button :box (:line-width 1 :style released-button)))))
      ;; (custom-changed ((t (nil))))
      ;; (custom-comment ((t (nil))))
      ;; (custom-comment-tag ((t (nil))))
      ;; (custom-documentation ((t (nil))))
      ;; (custom-face-tag ((t (nil))))
      ;; (custom-group-tag ((t (nil))))
      ;; (custom-group-tag-1 ((t (nil))))
      ;; (custom-invalid ((t (nil))))
      ;; (custom-link ((t (nil))))
      ;; (custom-modified ((t (nil))))
      ;; (custom-rogue ((t (nil))))
      ;; (custom-saved ((t (nil))))
      ;; (custom-set ((t (nil))))
      (custom-state ((t (:inherit default))))
      ;; (custom-themed ((t (nil))))
      ;; (custom-variable-button ((t (nil))))
      (custom-variable-tag ((t (:foreground ,skyblue1 :weight bold))))
      ;; (custom-visibility ((t (nil))))
      (widget-button ((t (:inherit custom-button))))
      (widget-button-pressed ((t (:inherit custom-button-pressed))))
      (widget-documentation ((t (:foreground ,chameleon3))))
      (widget-field ((t (:background ,aluminium5))))
      ;; (widget-inactive ((t (nil))))
      (widget-single-line-field ((t (:background ,aluminium5))))

      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

      (show-paren-match-face ((t (:foreground ,aluminium6 :background ,chameleon2))))
      (show-paren-mismatch-face ((t (:foreground ,aluminium6 :background ,plum1))))

      ))))

(provide 'tango+)

