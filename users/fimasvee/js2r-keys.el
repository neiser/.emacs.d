(require 'dash)
(require 's)

(defun my-js2-keys (keys)
  (->> (string-to-list keys)
    (--map (concat "C-s-" (char-to-string it)))
    (s-join " ")
    (read-kbd-macro)))

(eval-after-load "js2-refactor"
  '(progn
     (define-key js2-mode-map (my-js2-keys "eo") 'js2r-expand-object)
     (define-key js2-mode-map (my-js2-keys "co") 'js2r-contract-object)
     (define-key js2-mode-map (my-js2-keys "wi") 'js2r-wrap-buffer-in-iife)
     (define-key js2-mode-map (my-js2-keys "ig") 'js2r-inject-global-in-iife)
     (define-key js2-mode-map (my-js2-keys "ev") 'js2r-extract-var)
     (define-key js2-mode-map (my-js2-keys "iv") 'js2r-inline-var)
     (define-key js2-mode-map (my-js2-keys "rv") 'js2r-rename-var)
     (define-key js2-mode-map (my-js2-keys "vt") 'js2r-var-to-this)
     (define-key js2-mode-map (my-js2-keys "ag") 'js2r-add-to-globals-annotation)
     (define-key js2-mode-map (my-js2-keys "sv") 'js2r-split-var-declaration)
     (define-key js2-mode-map (my-js2-keys "ef") 'js2r-extract-function)
     (define-key js2-mode-map (my-js2-keys "em") 'js2r-extract-method)
     (define-key js2-mode-map (my-js2-keys "ip") 'js2r-introduce-parameter)
     (define-key js2-mode-map (my-js2-keys "lp") 'js2r-localize-parameter)
     (define-key js2-mode-map (my-js2-keys "tf") 'js2r-toggle-function-expression-and-declaration)
     (define-key js2-mode-map (my-js2-keys "ao") 'js2r-arguments-to-object)
     (define-key js2-mode-map (my-js2-keys "uw") 'js2r-unwrap)
     (define-key js2-mode-map (my-js2-keys "wl") 'js2r-wrap-in-for-loop)
     (define-key js2-mode-map (my-js2-keys "3i") 'js2r-ternary-to-if)
     (define-key js2-mode-map (my-js2-keys "jt") 'jump-to-test-file)
     (define-key js2-mode-map (my-js2-keys "ot") 'jump-to-test-file-other-window)
     (define-key js2-mode-map (my-js2-keys "js") 'jump-to-source-file)
     (define-key js2-mode-map (my-js2-keys "os") 'jump-to-source-file-other-window)
     (define-key js2-mode-map (my-js2-keys "jo") 'jump-between-source-and-test-files)
     (define-key js2-mode-map (my-js2-keys "oo") 'jump-between-source-and-test-files-other-window)
     (define-key js2-mode-map (my-js2-keys "ta") 'toggle-assert-refute)
     (define-key js2-mode-map (my-js2-keys "dp") 'js2r-duplicate-object-property-node)
     (define-key js2-mode-map (kbd "C-s-SPC") 'js2r-split-string)

     (define-key js2-mode-map (kbd "s-j") 'jump-between-source-and-test-files)

     ))
