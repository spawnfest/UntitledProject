(defmodule untitled_project
  (export
   (start 0)))

;;; -----------
;;; library API
;;; -----------

(defun start ()
  ;; FIXME: this should probably be ensure-all-started, or something.
  (application:ensure_all_started 'inets)
  (application:ensure_all_started  'untitled_project)
  (barista-server-app:start))
