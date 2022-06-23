;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutActuatorState)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutActuatorState (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTACTUATORSTATE")
  (make-package "SCOUT_MSGS::SCOUTACTUATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ScoutActuatorState.msg.html


(defclass scout_msgs::ScoutActuatorState
  :super ros::object
  :slots (_motor_id _rpm _current _pulse_count _driver_voltage _driver_temperature _motor_temperature _driver_state ))

(defmethod scout_msgs::ScoutActuatorState
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:rpm __rpm) 0)
    ((:current __current) 0.0)
    ((:pulse_count __pulse_count) 0)
    ((:driver_voltage __driver_voltage) 0.0)
    ((:driver_temperature __driver_temperature) 0.0)
    ((:motor_temperature __motor_temperature) 0)
    ((:driver_state __driver_state) 0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _rpm (round __rpm))
   (setq _current (float __current))
   (setq _pulse_count (round __pulse_count))
   (setq _driver_voltage (float __driver_voltage))
   (setq _driver_temperature (float __driver_temperature))
   (setq _motor_temperature (round __motor_temperature))
   (setq _driver_state (round __driver_state))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:pulse_count
   (&optional __pulse_count)
   (if __pulse_count (setq _pulse_count __pulse_count)) _pulse_count)
  (:driver_voltage
   (&optional __driver_voltage)
   (if __driver_voltage (setq _driver_voltage __driver_voltage)) _driver_voltage)
  (:driver_temperature
   (&optional __driver_temperature)
   (if __driver_temperature (setq _driver_temperature __driver_temperature)) _driver_temperature)
  (:motor_temperature
   (&optional __motor_temperature)
   (if __motor_temperature (setq _motor_temperature __motor_temperature)) _motor_temperature)
  (:driver_state
   (&optional __driver_state)
   (if __driver_state (setq _driver_state __driver_state)) _driver_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _motor_id
    1
    ;; int16 _rpm
    2
    ;; float64 _current
    8
    ;; int32 _pulse_count
    4
    ;; float32 _driver_voltage
    4
    ;; float32 _driver_temperature
    4
    ;; int8 _motor_temperature
    1
    ;; uint8 _driver_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _motor_id
       (write-byte _motor_id s)
     ;; int16 _rpm
       (write-word _rpm s)
     ;; float64 _current
       (sys::poke _current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _pulse_count
       (write-long _pulse_count s)
     ;; float32 _driver_voltage
       (sys::poke _driver_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _driver_temperature
       (sys::poke _driver_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _motor_temperature
       (write-byte _motor_temperature s)
     ;; uint8 _driver_state
       (write-byte _driver_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _motor_id
     (setq _motor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _rpm
     (setq _rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _current
     (setq _current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _pulse_count
     (setq _pulse_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _driver_voltage
     (setq _driver_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _driver_temperature
     (setq _driver_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _motor_temperature
     (setq _motor_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor_temperature 127) (setq _motor_temperature (- _motor_temperature 256)))
   ;; uint8 _driver_state
     (setq _driver_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_msgs::ScoutActuatorState :md5sum-) "b7d0dab53d094a83407b250f5f751832")
(setf (get scout_msgs::ScoutActuatorState :datatype-) "scout_msgs/ScoutActuatorState")
(setf (get scout_msgs::ScoutActuatorState :definition-)
      "#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)
#define DRIVER_STATE_MOTOR_OVERHEAT_MASK ((uint8_t)0x02)
#define DRIVER_STATE_DRIVER_OVERLOAD_MASK ((uint8_t)0x04)
#define DRIVER_STATE_DRIVER_OVERHEAT_MASK ((uint8_t)0x08)
#define DRIVER_STATE_SENSOR_FAULT_MASK ((uint8_t)0x10)
#define DRIVER_STATE_DRIVER_FAULT_MASK ((uint8_t)0x20)
#define DRIVER_STATE_DRIVER_ENABLED_MASK ((uint8_t)0x40)
#define DRIVER_STATE_DRIVER_RESET_MASK ((uint8_t)0x80)

uint8 motor_id
int16 rpm
float64 current
int32 pulse_count

float32 driver_voltage
float32 driver_temperature
int8 motor_temperature
uint8 driver_state
")



(provide :scout_msgs/ScoutActuatorState "b7d0dab53d094a83407b250f5f751832")


