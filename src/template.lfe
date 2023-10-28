(defmodule template
  (export all))

;; fixme, error handling on file.
(defun load (template-file)
  (let* ((priv-dir (: code priv_dir 'untitled_project))
         (file-path (++ priv-dir "/" template-file))
         ((tuple status contents) (: file read_file file-path)))
    contents))
