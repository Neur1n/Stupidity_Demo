; Auto-generated. Do not edit!


(cl:in-package dpralte060b080-msg)


;//! \htmlinclude DPRALTE060B080_Msg.msg.html

(cl:defclass <DPRALTE060B080_Msg> (roslisp-msg-protocol:ros-message)
  ((velocity_left
    :reader velocity_left
    :initarg :velocity_left
    :type cl:integer
    :initform 0)
   (velocity_right
    :reader velocity_right
    :initarg :velocity_right
    :type cl:integer
    :initform 0)
   (odometry_left
    :reader odometry_left
    :initarg :odometry_left
    :type cl:integer
    :initform 0)
   (odometry_right
    :reader odometry_right
    :initarg :odometry_right
    :type cl:integer
    :initform 0))
)

(cl:defclass DPRALTE060B080_Msg (<DPRALTE060B080_Msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DPRALTE060B080_Msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DPRALTE060B080_Msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dpralte060b080-msg:<DPRALTE060B080_Msg> is deprecated: use dpralte060b080-msg:DPRALTE060B080_Msg instead.")))

(cl:ensure-generic-function 'velocity_left-val :lambda-list '(m))
(cl:defmethod velocity_left-val ((m <DPRALTE060B080_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte060b080-msg:velocity_left-val is deprecated.  Use dpralte060b080-msg:velocity_left instead.")
  (velocity_left m))

(cl:ensure-generic-function 'velocity_right-val :lambda-list '(m))
(cl:defmethod velocity_right-val ((m <DPRALTE060B080_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte060b080-msg:velocity_right-val is deprecated.  Use dpralte060b080-msg:velocity_right instead.")
  (velocity_right m))

(cl:ensure-generic-function 'odometry_left-val :lambda-list '(m))
(cl:defmethod odometry_left-val ((m <DPRALTE060B080_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte060b080-msg:odometry_left-val is deprecated.  Use dpralte060b080-msg:odometry_left instead.")
  (odometry_left m))

(cl:ensure-generic-function 'odometry_right-val :lambda-list '(m))
(cl:defmethod odometry_right-val ((m <DPRALTE060B080_Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte060b080-msg:odometry_right-val is deprecated.  Use dpralte060b080-msg:odometry_right instead.")
  (odometry_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DPRALTE060B080_Msg>) ostream)
  "Serializes a message object of type '<DPRALTE060B080_Msg>"
  (cl:let* ((signed (cl:slot-value msg 'velocity_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'velocity_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'odometry_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'odometry_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DPRALTE060B080_Msg>) istream)
  "Deserializes a message object of type '<DPRALTE060B080_Msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odometry_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odometry_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DPRALTE060B080_Msg>)))
  "Returns string type for a message object of type '<DPRALTE060B080_Msg>"
  "dpralte060b080/DPRALTE060B080_Msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DPRALTE060B080_Msg)))
  "Returns string type for a message object of type 'DPRALTE060B080_Msg"
  "dpralte060b080/DPRALTE060B080_Msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DPRALTE060B080_Msg>)))
  "Returns md5sum for a message object of type '<DPRALTE060B080_Msg>"
  "9eb137a7320166026bceb0b1a0be23c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DPRALTE060B080_Msg)))
  "Returns md5sum for a message object of type 'DPRALTE060B080_Msg"
  "9eb137a7320166026bceb0b1a0be23c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DPRALTE060B080_Msg>)))
  "Returns full string definition for message of type '<DPRALTE060B080_Msg>"
  (cl:format cl:nil "int32   velocity_left~%int32   velocity_right~%int32   odometry_left~%int32   odometry_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DPRALTE060B080_Msg)))
  "Returns full string definition for message of type 'DPRALTE060B080_Msg"
  (cl:format cl:nil "int32   velocity_left~%int32   velocity_right~%int32   odometry_left~%int32   odometry_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DPRALTE060B080_Msg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DPRALTE060B080_Msg>))
  "Converts a ROS message object to a list"
  (cl:list 'DPRALTE060B080_Msg
    (cl:cons ':velocity_left (velocity_left msg))
    (cl:cons ':velocity_right (velocity_right msg))
    (cl:cons ':odometry_left (odometry_left msg))
    (cl:cons ':odometry_right (odometry_right msg))
))
