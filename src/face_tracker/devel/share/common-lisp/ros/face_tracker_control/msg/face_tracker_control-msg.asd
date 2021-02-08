
(cl:in-package :asdf)

(defsystem "face_tracker_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "centroid" :depends-on ("_package_centroid"))
    (:file "_package_centroid" :depends-on ("_package"))
  ))