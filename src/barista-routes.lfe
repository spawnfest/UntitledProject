(defmodule barista-routes
           (export (do 1)
                   (handle 3)
                   (validate 2)))

(include-lib "include/macros.lfe")
(include-lib "logjam/include/logjam.hrl")



(defun do (httpd-req)
  (let ((req (barista-request:->map httpd-req)))
    (handle (list_to_atom (mref req 'method))
            (mref req 'path)
            req)))

;; (defun write-terms (filename terms)
;;   (let* ((formatter ((lambda (x) (: io_lib format "~tp.~n" '(x)))))
;;          )
;;     (formatter "X = 1.")
;;     ))

(defun validate (id req)

  ;; unfortunately this doesn't validate
  (if (== 1 1)
      (barista-response:ok (erlang:binary_to_list (template:load "chapter2-error.html")))
    ))

(defroutes
 ;; This macro generates the handle/3 function used by do/1.
 ('GET #"/"
       (progn
         (logger:debug "This is getting old, why doesnt this match ")
         (barista-response:ok (erlang:binary_to_list (template:load "index.html")))))

 ('GET #"/chapter1"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter1.html")))))

 ('POST #"/chapter1-clicked"
        (progn
          (barista-response:ok
           "<div class=\"reallybig\"> Hello from Lisp Flavored Erlang </div>")))

 ('GET #"/chapter2/contact/:id/edit"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2-edit.html")))))

 ('PUT #"/chapter2/contact/:id"
       (progn
         (validate id (barista-request:get-data req))
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2-edit.html")))))

 ('GET #"/chapter2"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2.html")))))

 ('GET #"/live-demo"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "live.html")))))

 ('GET #"/about"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "about.html")))))

 ;; error conditions
 ('ALLOWONLY ('GET 'POST 'PUT 'DELETE)
             (barista-response:method-not-allowed))
 ('NOTFOUND
  (progn
    (logger:info "Bad path probably.. ?")
    (barista-response:not-found "Bad path!: invalid operation."))))
