(defmodule untitled_project-tests
  (behaviour ltest-unit)
  (import (from template (load 1)))
  (export all)
  )

(include-lib "ltest/include/ltest-macros.lfe")

;;; -----------
;;; library API
;;; -----------

(deftest code-privdir-is-sane ()
  (is-not (>= 4 (string:length (: code priv_dir "untitled_project")))))


;; how exactly would i test
(deftest template-loads-correctly
  (lfe_io:format "T: ~s" '(t))
  (is-equal #"RESULT\n" (template:load "test-template.txt")))
