(defmodule barista-routes
           (export (do 1)
                   (handle 3)
                   (validate 2)
                   (compile-data 1)
                   (compile-file 1)
                   (write-to-file 2)
                   ))

(include-lib "include/macros.lfe")
(include-lib "logjam/include/logjam.hrl")



(defun do (httpd-req)
  (let ((req (barista-request:->map httpd-req)))
    (handle (list_to_atom (mref req 'method))
            (mref req 'path)
            req)))


;; write data to a file.
(defun write-to-file (filename data)
  (file:write_file filename data ))


;;compile a file
(defun compile-file (filename)
  (: lfe-shell c filename))

;; compile it.
(defun compile-data (data)
  (write-to-file "/tmp/user-demo.lfe" data)
  (compile-file "/tmp/user-demo.lfe"))


(defun validate (id req)
  ;; TODO: implement form validation
  (if (== 1 1)
      (barista-response:ok (erlang:binary_to_list (template:load "chapter2-error.html")))))

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
         (validate id (barista-request:get-data req))))

 ('GET #"/chapter2/contact/:id"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2-default.html")))))
 
 ('GET #"/chapter2"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "chapter2.html")))))

 ('GET #"/live-demo/user-html"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "template-html.html")))))

 ('PUT #"/live-demo/user-html"
       (progn
         ;; FIXME: save the page in priv/user/user-demo.html
         (barista-response:ok "page saved")))

 ('GET #"/live-demo/user-lfe"
       (progn
         (barista-response:ok (erlang:binary_to_list (template:load "template-lfe.html")))))

 ('PUT #"/live-demo/user-lfe"
       (progn
         (compile-data (barista-request:get-data req))
         (barista-response:ok (erlang:binary_to_list (template:load "template-lfe.html")))))

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
