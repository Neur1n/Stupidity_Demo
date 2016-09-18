
(cl:in-package :asdf)

(defsystem "dpralte060b080-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DPRALTE060B080_Msg" :depends-on ("_package_DPRALTE060B080_Msg"))
    (:file "_package_DPRALTE060B080_Msg" :depends-on ("_package"))
  ))