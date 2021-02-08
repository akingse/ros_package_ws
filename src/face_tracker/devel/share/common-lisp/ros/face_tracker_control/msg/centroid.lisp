; Auto-generated. Do not edit!


(cl:in-package face_tracker_control-msg)


;//! \htmlinclude centroid.msg.html

(cl:defclass <centroid> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass centroid (<centroid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <centroid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'centroid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face_tracker_control-msg:<centroid> is deprecated: use face_tracker_control-msg:centroid instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_tracker_control-msg:x-val is deprecated.  Use face_tracker_control-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <centroid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face_tracker_control-msg:y-val is deprecated.  Use face_tracker_control-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <centroid>) ostream)
  "Serializes a message object of type '<centroid>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <centroid>) istream)
  "Deserializes a message object of type '<centroid>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<centroid>)))
  "Returns string type for a message object of type '<centroid>"
  "face_tracker_control/centroid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'centroid)))
  "Returns string type for a message object of type 'centroid"
  "face_tracker_control/centroid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<centroid>)))
  "Returns md5sum for a message object of type '<centroid>"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'centroid)))
  "Returns md5sum for a message object of type 'centroid"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<centroid>)))
  "Returns full string definition for message of type '<centroid>"
  (cl:format cl:nil "int32 x~%int32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'centroid)))
  "Returns full string definition for message of type 'centroid"
  (cl:format cl:nil "int32 x~%int32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <centroid>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <centroid>))
  "Converts a ROS message object to a list"
  (cl:list 'centroid
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
