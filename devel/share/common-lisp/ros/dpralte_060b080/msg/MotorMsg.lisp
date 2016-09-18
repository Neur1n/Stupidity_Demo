; Auto-generated. Do not edit!


(cl:in-package dpralte_060b080-msg)


;//! \htmlinclude MotorMsg.msg.html

(cl:defclass <MotorMsg> (roslisp-msg-protocol:ros-message)
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
   (ConfigurationSignal
    :reader ConfigurationSignal
    :initarg :ConfigurationSignal
    :type (cl:vector cl:integer)
   :initform (cl:make-array 12 :element-type 'cl:integer :initial-element 0))
   (VelocitySignal
    :reader VelocitySignal
    :initarg :VelocitySignal
    :type (cl:vector cl:integer)
   :initform (cl:make-array 14 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MotorMsg (<MotorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dpralte_060b080-msg:<MotorMsg> is deprecated: use dpralte_060b080-msg:MotorMsg instead.")))

(cl:ensure-generic-function 'velocity_left-val :lambda-list '(m))
(cl:defmethod velocity_left-val ((m <MotorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte_060b080-msg:velocity_left-val is deprecated.  Use dpralte_060b080-msg:velocity_left instead.")
  (velocity_left m))

(cl:ensure-generic-function 'velocity_right-val :lambda-list '(m))
(cl:defmethod velocity_right-val ((m <MotorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte_060b080-msg:velocity_right-val is deprecated.  Use dpralte_060b080-msg:velocity_right instead.")
  (velocity_right m))

(cl:ensure-generic-function 'ConfigurationSignal-val :lambda-list '(m))
(cl:defmethod ConfigurationSignal-val ((m <MotorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte_060b080-msg:ConfigurationSignal-val is deprecated.  Use dpralte_060b080-msg:ConfigurationSignal instead.")
  (ConfigurationSignal m))

(cl:ensure-generic-function 'VelocitySignal-val :lambda-list '(m))
(cl:defmethod VelocitySignal-val ((m <MotorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dpralte_060b080-msg:VelocitySignal-val is deprecated.  Use dpralte_060b080-msg:VelocitySignal instead.")
  (VelocitySignal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorMsg>) ostream)
  "Serializes a message object of type '<MotorMsg>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ConfigurationSignal))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'VelocitySignal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorMsg>) istream)
  "Deserializes a message object of type '<MotorMsg>"
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
  (cl:setf (cl:slot-value msg 'ConfigurationSignal) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'ConfigurationSignal)))
    (cl:dotimes (i 12)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'VelocitySignal) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'VelocitySignal)))
    (cl:dotimes (i 14)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorMsg>)))
  "Returns string type for a message object of type '<MotorMsg>"
  "dpralte_060b080/MotorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorMsg)))
  "Returns string type for a message object of type 'MotorMsg"
  "dpralte_060b080/MotorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorMsg>)))
  "Returns md5sum for a message object of type '<MotorMsg>"
  "573ac09c62ced905ea0ef9140f527951")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorMsg)))
  "Returns md5sum for a message object of type 'MotorMsg"
  "573ac09c62ced905ea0ef9140f527951")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorMsg>)))
  "Returns full string definition for message of type '<MotorMsg>"
  (cl:format cl:nil "int32   velocity_left~%int32   velocity_right~%char[12] ConfigurationSignal~%char[14] VelocitySignal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorMsg)))
  "Returns full string definition for message of type 'MotorMsg"
  (cl:format cl:nil "int32   velocity_left~%int32   velocity_right~%char[12] ConfigurationSignal~%char[14] VelocitySignal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorMsg>))
  (cl:+ 0
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ConfigurationSignal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'VelocitySignal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorMsg
    (cl:cons ':velocity_left (velocity_left msg))
    (cl:cons ':velocity_right (velocity_right msg))
    (cl:cons ':ConfigurationSignal (ConfigurationSignal msg))
    (cl:cons ':VelocitySignal (VelocitySignal msg))
))
