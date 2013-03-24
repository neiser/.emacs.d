;; auctex mode
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;(setq-default TeX-master "document")
(setq-default TeX-PDF-mode t)


(defvar TeX-auto-local)
(setq TeX-auto-local ".prv_auto/")
(defvar TeX-region)
(setq TeX-region ".prv_region_")
(add-hook 'TeX-mode-hook
          (lambda ()
            (defun preview-dump-file-name (file)
              "Make a file name suitable for dumping from FILE."
              (if file
                  (concat (file-name-directory file)
                          ".prv_"
                          (file-name-nondirectory file))
                ".prv_texput"))))

;;(setenv "TEXINPUTS" ":.:./gfx:./gp:../q//:../00common")

;; reftex mode

(require 'reftex)
(add-hook 'TeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode

;; nice return behavior in LaTeX mode
;; (add-hook 'TeX-mode-hook
;;           (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
;; set fill-mode in latex
(add-hook 'TeX-mode-hook 'turn-on-auto-fill)


(provide 'setup-auctex)
