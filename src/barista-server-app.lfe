(defmodule barista-server-app
  (behaviour application)
  (export all))

(defun config ()
  '(#(port 8888)
    #(server_name "barista-server-app")
    #(modules (barista-routes))))

(defun start ()
  (barista:start (config))
;;  (: timer sleep 'infinity)
  )

(defun start (_type _args)
  (start))

(defun stop (pid)
  (barista:stop pid))

(defun stop ()
  (inets:stop 'httpd))

(defun main (args)
  (start))
