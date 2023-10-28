(defmodule untitled_project-tests
  (behaviour ltest-unit)
  (import (from template (load 1)))
  (export all)
  )

(include-lib "ltest/include/ltest-macros.lfe")

;;; -----------
;;; library API
;;; -----------

;; wow, testing has its OWN priv directory, which isnt being populated.
(deftest code-privdir-is-sane ()
  (is-equal "/Users/wmealing/Projects/UntitledProject/_build/test/lib/untitled_project/priv"
            (: code priv_dir "untitled_project")))


;; how exactly would i test
(deftest template-loads-correctly
  (lfe_io:format "T: ~s" '(t))
  (is-equal #"RESULT\n" (template:load "test-template.txt")))
