;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::SwitchController)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'SwitchController (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLER")
  (make-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLER"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERRESPONSE"))

(in-package "ROS")





(intern "*BEST_EFFORT*" (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST"))
(shadow '*BEST_EFFORT* (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST"))
(defconstant controller_manager_msgs::SwitchControllerRequest::*BEST_EFFORT* 1)
(intern "*STRICT*" (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST"))
(shadow '*STRICT* (find-package "CONTROLLER_MANAGER_MSGS::SWITCHCONTROLLERREQUEST"))
(defconstant controller_manager_msgs::SwitchControllerRequest::*STRICT* 2)
(defclass controller_manager_msgs::SwitchControllerRequest
  :super ros::object
  :slots (_start_controllers _stop_controllers _strictness _start_asap _timeout ))

(defmethod controller_manager_msgs::SwitchControllerRequest
  (:init
   (&key
    ((:start_controllers __start_controllers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stop_controllers __stop_controllers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:strictness __strictness) 0)
    ((:start_asap __start_asap) nil)
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _start_controllers __start_controllers)
   (setq _stop_controllers __stop_controllers)
   (setq _strictness (round __strictness))
   (setq _start_asap __start_asap)
   (setq _timeout (float __timeout))
   self)
  (:start_controllers
   (&optional __start_controllers)
   (if __start_controllers (setq _start_controllers __start_controllers)) _start_controllers)
  (:stop_controllers
   (&optional __stop_controllers)
   (if __stop_controllers (setq _stop_controllers __stop_controllers)) _stop_controllers)
  (:strictness
   (&optional __strictness)
   (if __strictness (setq _strictness __strictness)) _strictness)
  (:start_asap
   (&optional __start_asap)
   (if __start_asap (setq _start_asap __start_asap)) _start_asap)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; string[] _start_controllers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _start_controllers)) 4
    ;; string[] _stop_controllers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _stop_controllers)) 4
    ;; int32 _strictness
    4
    ;; bool _start_asap
    1
    ;; float64 _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _start_controllers
     (write-long (length _start_controllers) s)
     (dolist (elem _start_controllers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _stop_controllers
     (write-long (length _stop_controllers) s)
     (dolist (elem _stop_controllers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _strictness
       (write-long _strictness s)
     ;; bool _start_asap
       (if _start_asap (write-byte -1 s) (write-byte 0 s))
     ;; float64 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _start_controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_controllers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _start_controllers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _stop_controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_controllers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _stop_controllers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _strictness
     (setq _strictness (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _start_asap
     (setq _start_asap (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _timeout
     (setq _timeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass controller_manager_msgs::SwitchControllerResponse
  :super ros::object
  :slots (_ok ))

(defmethod controller_manager_msgs::SwitchControllerResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass controller_manager_msgs::SwitchController
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::SwitchController :md5sum-) "b29a7abc673b2c54c14b54e50f8d06a5")
(setf (get controller_manager_msgs::SwitchController :datatype-) "controller_manager_msgs/SwitchController")
(setf (get controller_manager_msgs::SwitchController :request) controller_manager_msgs::SwitchControllerRequest)
(setf (get controller_manager_msgs::SwitchController :response) controller_manager_msgs::SwitchControllerResponse)

(defmethod controller_manager_msgs::SwitchControllerRequest
  (:response () (instance controller_manager_msgs::SwitchControllerResponse :init)))

(setf (get controller_manager_msgs::SwitchControllerRequest :md5sum-) "b29a7abc673b2c54c14b54e50f8d06a5")
(setf (get controller_manager_msgs::SwitchControllerRequest :datatype-) "controller_manager_msgs/SwitchControllerRequest")
(setf (get controller_manager_msgs::SwitchControllerRequest :definition-)
      "




















string[] start_controllers
string[] stop_controllers
int32 strictness
int32 BEST_EFFORT=1
int32 STRICT=2
bool start_asap
float64 timeout
---
bool ok

")

(setf (get controller_manager_msgs::SwitchControllerResponse :md5sum-) "b29a7abc673b2c54c14b54e50f8d06a5")
(setf (get controller_manager_msgs::SwitchControllerResponse :datatype-) "controller_manager_msgs/SwitchControllerResponse")
(setf (get controller_manager_msgs::SwitchControllerResponse :definition-)
      "




















string[] start_controllers
string[] stop_controllers
int32 strictness
int32 BEST_EFFORT=1
int32 STRICT=2
bool start_asap
float64 timeout
---
bool ok

")



(provide :controller_manager_msgs/SwitchController "b29a7abc673b2c54c14b54e50f8d06a5")


