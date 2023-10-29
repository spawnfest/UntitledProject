#! /usr/bin/env lfescript

;;; --------------------
;;; entry point function
;;; --------------------

(defun main (args)
  (let ((script-name (escript:script_name)))
    (io:format "Visit http://localhost:8888/ in your browser~n")
    (io:format "~p~n" `(,(untitled_project:start)))) 
    (timer:sleep 30000000)
)
