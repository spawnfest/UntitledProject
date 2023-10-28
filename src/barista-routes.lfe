(defmodule barista-routes
           (export (do 1)
                   (handle 3)))


(defun do (httpd-req)
  (let ((req (barista-request:->map httpd-req)))
    (handle (list_to_atom (mref req 'method))
            (mref req 'path)
            req)))


(defun generate-headers ()
  '("Content-Type: text/html"
    "Cache-Control: no-cache"
    "Cache-Control: no-store"
    "\r\n"))

(defun handle
    (('GET (list (binary ("chapter1")))  (= `#m(body ,body) req))
     (progn
       (lfe_io:format "Serving up get on chapter 1~n" '())
       (let* ((headers (generate-headers))
              (body (list (template:load "chapter1.html"))))
         (lfe_io:format "headers: ~p~n" `(,headers))
         (barista:response 200 headers body))))

  ;; catch all, i guess.
  ((method path (= `#m(body ,body) req))
   (progn
     (lfe_io:format "METHOD IS ATOM?: ~p~n" (list (is_atom method)))
     (lfe_io:format "method: ~p~n" (list method))
     (lfe_io:format "catch all~n" '())
     (lfe_io:format "path: ~p~n" (list path))
     (let* ((headers (generate-headers))
            (body (list (template:load "index.html"))))
       (lfe_io:format "headers: ~p~n" `(,headers))
       (barista:response 200 headers body))))
  )



(defun safety-check

    (('ok msg) (io:format "~s seems good.~n" (list msg)))
  (('warn msg) (io:format "There's a problem with ~s.~n" (list msg)))
  (('crit msg) (io:format "Be careful of ~s.~n" (list msg))))
