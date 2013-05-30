;; cmake mode
;; (autoload 'cmake-mode "CMAKE" "Major mode for editing CMake listfiles")
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

(provide 'setup-cmake-mode)
