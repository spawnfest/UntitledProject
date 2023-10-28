(defmodule untitled-project
  (export
   (start 0)))

;;; -----------
;;; library API
;;; -----------

(defun start ()
  ;; FIXME: this should probably be ensure-all-started, or something.
  (application:ensure_started  'untitled-project)
  (barista-server-app:start))
