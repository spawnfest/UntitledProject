#! /usr/bin/env lfescript

;;; --------------------
;;; entry point function
;;; --------------------

(defun main (args)
  (let ((script-name (escript:script_name)))
    (io:format "Running script '~s' with args ~p ...~n" `(,script-name ,args))
    (io:format "~p~n" `(,(untitled_project:start)))) 
    (timer:sleep 30000000)
)
