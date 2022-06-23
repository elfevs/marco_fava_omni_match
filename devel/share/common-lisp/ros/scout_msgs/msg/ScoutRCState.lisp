; Auto-generated. Do not edit!


(cl:in-package scout_msgs-msg)


;//! \htmlinclude ScoutRCState.msg.html

(cl:defclass <ScoutRCState> (roslisp-msg-protocol:ros-message)
  ((swa
    :reader swa
    :initarg :swa
    :type cl:fixnum
    :initform 0)
   (swb
    :reader swb
    :initarg :swb
    :type cl:fixnum
    :initform 0)
   (swc
    :reader swc
    :initarg :swc
    :type cl:fixnum
    :initform 0)
   (swd
    :reader swd
    :initarg :swd
    :type cl:fixnum
    :initform 0)
   (stick_right_v
    :reader stick_right_v
    :initarg :stick_right_v
    :type cl:fixnum
    :initform 0)
   (stick_right_h
    :reader stick_right_h
    :initarg :stick_right_h
    :type cl:fixnum
    :initform 0)
   (stick_left_v
    :reader stick_left_v
    :initarg :stick_left_v
    :type cl:fixnum
    :initform 0)
   (stick_left_h
    :reader stick_left_h
    :initarg :stick_left_h
    :type cl:fixnum
    :initform 0)
   (var_a
    :reader var_a
    :initarg :var_a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ScoutRCState (<ScoutRCState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoutRCState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoutRCState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_msgs-msg:<ScoutRCState> is deprecated: use scout_msgs-msg:ScoutRCState instead.")))

(cl:ensure-generic-function 'swa-val :lambda-list '(m))
(cl:defmethod swa-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:swa-val is deprecated.  Use scout_msgs-msg:swa instead.")
  (swa m))

(cl:ensure-generic-function 'swb-val :lambda-list '(m))
(cl:defmethod swb-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:swb-val is deprecated.  Use scout_msgs-msg:swb instead.")
  (swb m))

(cl:ensure-generic-function 'swc-val :lambda-list '(m))
(cl:defmethod swc-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:swc-val is deprecated.  Use scout_msgs-msg:swc instead.")
  (swc m))

(cl:ensure-generic-function 'swd-val :lambda-list '(m))
(cl:defmethod swd-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:swd-val is deprecated.  Use scout_msgs-msg:swd instead.")
  (swd m))

(cl:ensure-generic-function 'stick_right_v-val :lambda-list '(m))
(cl:defmethod stick_right_v-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:stick_right_v-val is deprecated.  Use scout_msgs-msg:stick_right_v instead.")
  (stick_right_v m))

(cl:ensure-generic-function 'stick_right_h-val :lambda-list '(m))
(cl:defmethod stick_right_h-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:stick_right_h-val is deprecated.  Use scout_msgs-msg:stick_right_h instead.")
  (stick_right_h m))

(cl:ensure-generic-function 'stick_left_v-val :lambda-list '(m))
(cl:defmethod stick_left_v-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:stick_left_v-val is deprecated.  Use scout_msgs-msg:stick_left_v instead.")
  (stick_left_v m))

(cl:ensure-generic-function 'stick_left_h-val :lambda-list '(m))
(cl:defmethod stick_left_h-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:stick_left_h-val is deprecated.  Use scout_msgs-msg:stick_left_h instead.")
  (stick_left_h m))

(cl:ensure-generic-function 'var_a-val :lambda-list '(m))
(cl:defmethod var_a-val ((m <ScoutRCState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:var_a-val is deprecated.  Use scout_msgs-msg:var_a instead.")
  (var_a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoutRCState>) ostream)
  "Serializes a message object of type '<ScoutRCState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swd)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'stick_right_v)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stick_right_h)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stick_left_v)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stick_left_h)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'var_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoutRCState>) istream)
  "Deserializes a message object of type '<ScoutRCState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swd)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stick_right_v) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stick_right_h) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stick_left_v) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stick_left_h) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var_a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoutRCState>)))
  "Returns string type for a message object of type '<ScoutRCState>"
  "scout_msgs/ScoutRCState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoutRCState)))
  "Returns string type for a message object of type 'ScoutRCState"
  "scout_msgs/ScoutRCState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoutRCState>)))
  "Returns md5sum for a message object of type '<ScoutRCState>"
  "c78447ebdf8846481ba608e1b4be107c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoutRCState)))
  "Returns md5sum for a message object of type 'ScoutRCState"
  "c78447ebdf8846481ba608e1b4be107c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoutRCState>)))
  "Returns full string definition for message of type '<ScoutRCState>"
  (cl:format cl:nil "uint8 swa~%uint8 swb~%uint8 swc~%uint8 swd~%~%int8 stick_right_v~%int8 stick_right_h~%int8 stick_left_v~%int8 stick_left_h~%int8 var_a~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoutRCState)))
  "Returns full string definition for message of type 'ScoutRCState"
  (cl:format cl:nil "uint8 swa~%uint8 swb~%uint8 swc~%uint8 swd~%~%int8 stick_right_v~%int8 stick_right_h~%int8 stick_left_v~%int8 stick_left_h~%int8 var_a~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoutRCState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoutRCState>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoutRCState
    (cl:cons ':swa (swa msg))
    (cl:cons ':swb (swb msg))
    (cl:cons ':swc (swc msg))
    (cl:cons ':swd (swd msg))
    (cl:cons ':stick_right_v (stick_right_v msg))
    (cl:cons ':stick_right_h (stick_right_h msg))
    (cl:cons ':stick_left_v (stick_left_v msg))
    (cl:cons ':stick_left_h (stick_left_h msg))
    (cl:cons ':var_a (var_a msg))
))
