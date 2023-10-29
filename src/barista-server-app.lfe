(defmodule barista-server-app
  (behaviour application)
  (export all))


(include-lib "logjam/include/logjam.hrl")


(defun config ()
  '(#(port 8888)
    #(server_name "barista-server-app")
    #(modules (barista-routes))))

(defun start ()
  (logger:set_primary_config #m(level all))
  (logjam:set-config `#(path ,"config/sys.config"))
  (logger:alert "Starting barista server: ")
  (barista:start (config))
  )

(defun start (_type _args)
  (start))

(defun stop (pid)
  (barista:stop pid))

(defun stop ()
  (inets:stop 'httpd))

(defun main (args)
  (start))
