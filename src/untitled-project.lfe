(defmodule untitled-project
  (export
   (start 0)))

;;; -----------
;;; library API
;;; -----------

(defun start ()
  ;; FIXME: this should probably be ensure-all-started.
  (barista-server-app:start))
