; Auto-generated. Do not edit!


(cl:in-package scout_msgs-msg)


;//! \htmlinclude ScoutActuatorState.msg.html

(cl:defclass <ScoutActuatorState> (roslisp-msg-protocol:ros-message)
  ((motor_id
    :reader motor_id
    :initarg :motor_id
    :type cl:fixnum
    :initform 0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (pulse_count
    :reader pulse_count
    :initarg :pulse_count
    :type cl:integer
    :initform 0)
   (driver_voltage
    :reader driver_voltage
    :initarg :driver_voltage
    :type cl:float
    :initform 0.0)
   (driver_temperature
    :reader driver_temperature
    :initarg :driver_temperature
    :type cl:float
    :initform 0.0)
   (motor_temperature
    :reader motor_temperature
    :initarg :motor_temperature
    :type cl:fixnum
    :initform 0)
   (driver_state
    :reader driver_state
    :initarg :driver_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ScoutActuatorState (<ScoutActuatorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoutActuatorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoutActuatorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_msgs-msg:<ScoutActuatorState> is deprecated: use scout_msgs-msg:ScoutActuatorState instead.")))

(cl:ensure-generic-function 'motor_id-val :lambda-list '(m))
(cl:defmethod motor_id-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:motor_id-val is deprecated.  Use scout_msgs-msg:motor_id instead.")
  (motor_id m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:rpm-val is deprecated.  Use scout_msgs-msg:rpm instead.")
  (rpm m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:current-val is deprecated.  Use scout_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'pulse_count-val :lambda-list '(m))
(cl:defmethod pulse_count-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:pulse_count-val is deprecated.  Use scout_msgs-msg:pulse_count instead.")
  (pulse_count m))

(cl:ensure-generic-function 'driver_voltage-val :lambda-list '(m))
(cl:defmethod driver_voltage-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:driver_voltage-val is deprecated.  Use scout_msgs-msg:driver_voltage instead.")
  (driver_voltage m))

(cl:ensure-generic-function 'driver_temperature-val :lambda-list '(m))
(cl:defmethod driver_temperature-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:driver_temperature-val is deprecated.  Use scout_msgs-msg:driver_temperature instead.")
  (driver_temperature m))

(cl:ensure-generic-function 'motor_temperature-val :lambda-list '(m))
(cl:defmethod motor_temperature-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:motor_temperature-val is deprecated.  Use scout_msgs-msg:motor_temperature instead.")
  (motor_temperature m))

(cl:ensure-generic-function 'driver_state-val :lambda-list '(m))
(cl:defmethod driver_state-val ((m <ScoutActuatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:driver_state-val is deprecated.  Use scout_msgs-msg:driver_state instead.")
  (driver_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoutActuatorState>) ostream)
  "Serializes a message object of type '<ScoutActuatorState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pulse_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'driver_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'driver_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'motor_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'driver_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoutActuatorState>) istream)
  "Deserializes a message object of type '<ScoutActuatorState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rpm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pulse_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'driver_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'driver_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'driver_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoutActuatorState>)))
  "Returns string type for a message object of type '<ScoutActuatorState>"
  "scout_msgs/ScoutActuatorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoutActuatorState)))
  "Returns string type for a message object of type 'ScoutActuatorState"
  "scout_msgs/ScoutActuatorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoutActuatorState>)))
  "Returns md5sum for a message object of type '<ScoutActuatorState>"
  "b7d0dab53d094a83407b250f5f751832")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoutActuatorState)))
  "Returns md5sum for a message object of type 'ScoutActuatorState"
  "b7d0dab53d094a83407b250f5f751832")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoutActuatorState>)))
  "Returns full string definition for message of type '<ScoutActuatorState>"
  (cl:format cl:nil "#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)~%#define DRIVER_STATE_MOTOR_OVERHEAT_MASK ((uint8_t)0x02)~%#define DRIVER_STATE_DRIVER_OVERLOAD_MASK ((uint8_t)0x04)~%#define DRIVER_STATE_DRIVER_OVERHEAT_MASK ((uint8_t)0x08)~%#define DRIVER_STATE_SENSOR_FAULT_MASK ((uint8_t)0x10)~%#define DRIVER_STATE_DRIVER_FAULT_MASK ((uint8_t)0x20)~%#define DRIVER_STATE_DRIVER_ENABLED_MASK ((uint8_t)0x40)~%#define DRIVER_STATE_DRIVER_RESET_MASK ((uint8_t)0x80)~%~%uint8 motor_id~%int16 rpm~%float64 current~%int32 pulse_count~%~%float32 driver_voltage~%float32 driver_temperature~%int8 motor_temperature~%uint8 driver_state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoutActuatorState)))
  "Returns full string definition for message of type 'ScoutActuatorState"
  (cl:format cl:nil "#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)~%#define DRIVER_STATE_MOTOR_OVERHEAT_MASK ((uint8_t)0x02)~%#define DRIVER_STATE_DRIVER_OVERLOAD_MASK ((uint8_t)0x04)~%#define DRIVER_STATE_DRIVER_OVERHEAT_MASK ((uint8_t)0x08)~%#define DRIVER_STATE_SENSOR_FAULT_MASK ((uint8_t)0x10)~%#define DRIVER_STATE_DRIVER_FAULT_MASK ((uint8_t)0x20)~%#define DRIVER_STATE_DRIVER_ENABLED_MASK ((uint8_t)0x40)~%#define DRIVER_STATE_DRIVER_RESET_MASK ((uint8_t)0x80)~%~%uint8 motor_id~%int16 rpm~%float64 current~%int32 pulse_count~%~%float32 driver_voltage~%float32 driver_temperature~%int8 motor_temperature~%uint8 driver_state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoutActuatorState>))
  (cl:+ 0
     1
     2
     8
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoutActuatorState>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoutActuatorState
    (cl:cons ':motor_id (motor_id msg))
    (cl:cons ':rpm (rpm msg))
    (cl:cons ':current (current msg))
    (cl:cons ':pulse_count (pulse_count msg))
    (cl:cons ':driver_voltage (driver_voltage msg))
    (cl:cons ':driver_temperature (driver_temperature msg))
    (cl:cons ':motor_temperature (motor_temperature msg))
    (cl:cons ':driver_state (driver_state msg))
))
