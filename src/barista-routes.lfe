(defmodule barista-routes
           (export (do 1)
                   (handle 3)))


(defun do (httpd-req)
  (let ((req (barista-request:->map httpd-req)))
    (handle (list_to_atom (mref req 'method))
            (mref req 'path)
            req)))
(defun handle
    ((method path (= `#m(body ,body) req))
     "Example handler that displays whatever is passed through."
     (lfe_io:format "method: ~p~n" (list method))
     (lfe_io:format "path: ~p~n" (list path))
     (let* ((headers '("Content-Type: text/html"
                       "Cache-Control: no-cache"
                       "Cache-Control: no-store"
                       "\r\n"))
            (body (list (template:load "index.html"))))
       (lfe_io:format "headers: ~p~n" `(,headers))
       ;;       (lfe_io:format "body: ~p~n~n" `(,body))
       (barista:response 200 headers body))))

