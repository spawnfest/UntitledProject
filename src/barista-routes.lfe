(defmodule barista-routes
           (export (do 1)
                   (handle 3)))

(include-lib "include/macros.lfe")
(include-lib "logjam/include/logjam.hrl")

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


(defroutes
 ;; This macro generates the handle/3 function used by do/1.
 ;;
 ;; top-level
 ('GET #"/"
       (progn
         (logger:debug "This is getting old, why doesnt this match ")
         (barista-response:ok (erlang:binary_to_list (template:load "index.html")))))

 ('GET #"/chapter1"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter1.html")))))

 ('POST #"/chapter1-clicked"
        (progn
          (barista-response:ok "<div class=\"center\"> Hello from Lisp Flavored erlang </div>")))

 ('GET #"/chapter2"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2.html")))))

 ('GET #"/chapter3"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter3.html")))))

 ('GET #"/live-demo"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "live.html")))))

 ;; error conditions
 ('ALLOWONLY ('GET 'POST 'PUT 'DELETE)
             (barista-response:method-not-allowed))
 ('NOTFOUND
  (progn
    (logger:info "Bad path probably.. ?")
    (barista-response:not-found "Bad path!: invalid operation."))))

;; (defun handle
;;     (('GET (list (binary ("chapter1")))  (= `#m(body ,body) req))
;;      (progn
;;        (lfe_io:format "Serving up get on chapter 1~n" '())
;;        (let* ((headers (generate-headers))
;;               (body (list (template:load "chapter1.html"))))
;;          (lfe_io:format "headers: ~p~n" `(,headers))
;;          (barista:response 200 headers body)))))

;;   (('GET (list (binary ("chapter2")))  (= `#m(body ,body) req))
;;    (progn
;;      (lfe_io:format "Serving up get on chapter 2~n" '())
;;      (let* ((headers (generate-headers))
;;             (body (list (template:load "chapter2.html"))))
;;        (lfe_io:format "headers: ~p~n" `(,headers))
;;        (barista:response 200 headers body))))

;;   (('POST (list (binary ("chapter1-clicked")) )(= `#m(body ,body) req))
;;    (progn
;;      (let* ((headers (generate-headers))
;;             (body (list (binary "<b> This is just a html fragment </b>"))))
;;        (lfe_io:format "headers: ~p~n" `(,headers))
;;        (barista:response 200 headers body))))

;;   ;; catch all, i guess.
;;   ((method path (= `#m(body ,body) req))
;;    (progn
;;      (lfe_io:format "METHOD IS ATOM?: ~p~n" (list (is_atom method)))
;;      (lfe_io:format "method: ~p~n" (list method))
;;      (lfe_io:format "catch all~n" '())
;;      (lfe_io:format "path: ~p~n" (list path))
;;      (let* ((headers (generate-headers))
;;             (body (list (template:load "index.html"))))
;;        (lfe_io:format "headers: ~p~n" `(,headers))
;;        (barista:response 200 headers body)))))




