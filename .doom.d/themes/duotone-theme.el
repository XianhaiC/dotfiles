;;; themes/duotone-theme.el -*- lexical-binding: t; -*-

(require 'doom-themes)


; (defgroup duotone nil
  ; "Options for doom-themes"
  ; :group 'doom-themes)

;; (defcustom doom-laserwave-padded-modeline doom-themes-padded-modeline
;;   "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
;; determine the exact padding."
;;   :group 'doom-laserwave-theme
;;   :type '(choice integer boolean))

;;
(def-doom-theme duotone
  "Custom duotone"

  ;; name        default   256       16
  ;; ((bg         '("#0000FF" nil       nil            ))
  ;;  (bg-alt     '("#FF0000" nil       nil            ))
  ;;  (base0      '("#CCCCCC" "black"   "black"        ))
  ;;  (base1      '("#424242" "#222222" "brightblack"  ))
  ;;  (base2      '("#545454" "#222233" "brightblack"  ))
  ;;  (base3      '("#999999" "#333344" "brightblack"  ))
  ;;  (base4      '("#4E415C" "#444455" "brightblack"  ))
  ;;  (base5      '("#544863" "#554466" "brightblack"  ))
  ;;  (base6      '("#ED60BA" "#EE66BB" "brightblack"  ))
  ;;  (base7      '("#91889B" "#998899" "brightblack"  ))
  ;;  (base8      '("#ECEFF4" "#EEEEFF" "white"        ))
  ;;  (fg-alt     '("#303030" "#EEEEEE" "brightwhite"  ))
  ;;  (fg         '("#EEFFFF" "#FFFFFF" "white"        ))
  ((black               '("#CCCCCC"))
   (medium-gray         '("#767676"))
   (white               '("#F1F1F1"))
   (actual-white        '("#FFFFFF"))
   (light-black         '("#424242"))
   (lighter-black       '("#545454"))
   (subtle-black        '("#303030"))
   (light-gray          '("#999999"))
   (lighter-gray        '("#CCCCCC"))
   (lightest-gray       '("#E5E5E5"))

   (pink                '("#FB007A"))
   (dark-red            '("#C30771"))
   (light-red           '("#E32791"))
   (orange              '("#D75F5F"))
   (darker-blue         '("#005F87"))
   (dark-blue           '("#008EC4"))
   (blue                '("#20BBFC"))
   (light-blue          '("#B6D6FD"))
   (dark-cyan           '("#20A5BA"))
   (light-cyan          '("#4FB8CC"))
   (dark-green          '("#10A778"))
   (light-green         '("#5FD7A7"))
   (dark-purple         '("#523C79"))
   (light-purple        '("#6855DE"))
   (light-yellow        '("#F3E430"))
   (dark-yellow         '("#A89C14"))

   (bg          black)
   (bg-alt      black)
   (fg          norm)
   (fg-alt      white)
   (norm        lighter-gray)
   (norm-subtle light-gray)
   (red         light-red)
   (green       light-green)
   (teal        light-green)
   (violet      pink)
   (magenta     pink)
   (yellow      norm)
   (cyan        light-green)

   (base0       black)
   (base1       lighter-gray)
   (base2       lighter-gray)
   (base3       lighter-gray)
   (base4       light-black)
   (base5       lighter-black)
   (base6       light-gray)
   (base7       light-gray)
   (base8       lighter-gray)
   (grey        medium-gray)

   ;; face categories -- required for all themes
   (highlight      fg)
   (vertical-bar   norm)
   (selection      fg)
   (builtin        norm)
   (comments       lighter-black)
   (doc-comments   lighter-black)
   (constants      light-green)
   (functions      norm)
   (keywords       norm)
   (methods        norm)
   (operators      norm)
   (type           norm)
   (strings        constants)
   (variables      norm)
   (numbers        light-green)
   (region         `(,(doom-blend (car bg) (car constants) 0.8) ,@(doom-lighten (cdr norm) 0.35)))
   (error          pink)
   (warning        pink)
   (success        norm)
   (vc-modified    norm)
   (vc-added       norm)
   (vc-deleted     norm)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   ;; (-modeline-pad
   ;;  (when doom-laserwave-padded-modeline
   ;;    (if (integerp doom-laserwave-padded-modeline) doom-laserwave-padded-modeline 4)))

   (modeline-fg     bg)
   (modeline-fg-alt norm)

   (modeline-bg
    norm)
   (modeline-bg-l
    `(,(doom-darken (car bg) 0.1) ,@(cdr norm)))
   (modeline-bg-inactive   (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(car bg) ,@(cdr norm))))


  ;; --- extra faces ------------------------
  ;; Centaur tabs
  ((centaur-tabs-active-bar-face :background pink)
   (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected
                                          :foreground pink)
   (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected
                                            :foreground pink)
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   ((line-number &override) :foreground norm)
   ((line-number-current-line &override) :foreground fg)

   (font-lock-comment-face
    :foreground comments)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (doom-modeline-bar :background highlight)

   ;; (mode-line
   ;;  :background modeline-bg :foreground modeline-fg
   ;;  :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   ;; (mode-line-inactive
   ;;  :background modeline-bg-inactive :foreground modeline-fg-alt
   ;;  :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   ;; (mode-line-emphasis
   ;;  :foreground bg-alt)

   ;; (solaire-mode-line-face
   ;;  :background modeline-bg :foreground modeline-fg
   ;;  :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))

   ;; Doom modeline
   (doom-modeline-bar :background norm)
   (doom-modeline-info :inherit 'mode-line-emphasis)
   (doom-modeline-urgent :inherit 'mode-line-emphasis)
   (doom-modeline-warning :inherit 'mode-line-emphasis)
   (doom-modeline-debug :inherit 'mode-line-emphasis)
   (doom-modeline-buffer-minor-mode :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-project-dir :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-project-parent-dir :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-persp-name :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-file :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-modified :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-lsp-success :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :inherit 'mode-line-emphasis)
   (doom-modeline-evil-visual-state :foreground norm)
   (doom-modeline-evil-replace-state :foreground norm)
   (doom-modeline-evil-operator-state :foreground norm)

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground norm)
   (css-property             :foreground norm)
   (css-selector             :foreground norm)

   ;; markdown-mode
   (markdown-header-delimiter-face :foreground norm)
   (markdown-metadata-key-face     :foreground norm)
   (markdown-list-face             :foreground norm)
   (markdown-link-face             :foreground norm)
   (markdown-url-face              :inherit 'link :foreground fg :weight 'normal)
   (markdown-italic-face           :inherit 'italic :foreground pink)
   (markdown-bold-face             :inherit 'bold :foreground pink)
   (markdown-markup-face           :foreground norm)
   (markdown-gfm-checkbox-face :foreground norm)

   ;; outline (affects org-mode)
   ((outline-1 &override) :foreground norm)
   ((outline-2 &override) :foreground norm)
   ((outline-3 &override) :foreground norm)
   ((outline-4 &override) :foreground (doom-darken norm 0.2))
   ((outline-5 &override) :foreground (doom-darken norm 0.2))
   ((outline-6 &override) :foreground (doom-darken norm 0.2))
   ((outline-7 &override) :foreground (doom-darken norm 0.4))
   ((outline-8 &override) :foreground (doom-darken norm 0.4))

   ;; org-mode
   ((org-block &override) :background norm)
   ((org-block-begin-line &override) :background norm)
   (org-hide :foreground hidden)

   ;; org-pomodoro
   (org-pomodoro-mode-line :inherit 'mode-line-emphasis :weight 'bold) ; unreadable otherwise
   (org-pomodoro-mode-line-overtime :inherit 'org-pomodoro-mode-line)
   (org-pomodoro-mode-line-break :inherit 'org-pomodoro-mode-line)

   ;; --- extra variables ---------------------
   (paren-face-match  :foreground norm   :background (doom-darken bg 0.2) :weight 'ultra-bold)
   (ivy-current-match :background norm :distant-foreground nil)
   (tooltip           :background bg :foreground fg)
   (company-box-background :foreground fg :background bg))

  )

;;; themes/duoton-theme.el ends here
