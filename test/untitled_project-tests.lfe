(defmodule untitled_project-tests
  (behaviour ltest-unit))

(include-lib "ltest/include/ltest-macros.lfe")

;;; -----------
;;; library API
;;; -----------

(defun t ()
  'hello-world
  )

(deftest my-fun
  (is-equal 'hello-world (untitled_project-tests:t)))
