(defmodule untitled_project-tests
  (behaviour ltest-unit))

(include-lib "ltest/include/ltest-macros.lfe")

;;; -----------
;;; library API
;;; -----------

(defun t ()
  'hello-world
  )

(deftest template-loads-correctly
  (is-equal "RESULT" (barista-utils:load-template "test-template.txt")))
