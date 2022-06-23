;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutLightCmd)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutLightCmd (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTLIGHTCMD")
  (make-package "SCOUT_MSGS::SCOUTLIGHTCMD"))

(in-package "ROS")
;;//! \htmlinclude ScoutLightCmd.msg.html


(intern "*LIGHT_CONST_OFF*" (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(shadow '*LIGHT_CONST_OFF* (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(defconstant scout_msgs::ScoutLightCmd::*LIGHT_CONST_OFF* 0)
(intern "*LIGHT_CONST_ON*" (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(shadow '*LIGHT_CONST_ON* (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(defconstant scout_msgs::ScoutLightCmd::*LIGHT_CONST_ON* 1)
(intern "*LIGHT_BREATH*" (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(shadow '*LIGHT_BREATH* (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(defconstant scout_msgs::ScoutLightCmd::*LIGHT_BREATH* 2)
(intern "*LIGHT_CUSTOM*" (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(shadow '*LIGHT_CUSTOM* (find-package "SCOUT_MSGS::SCOUTLIGHTCMD"))
(defconstant scout_msgs::ScoutLightCmd::*LIGHT_CUSTOM* 3)
(defclass scout_msgs::ScoutLightCmd
  :super ros::object
  :slots (_cmd_ctrl_allowed _front_mode _front_custom_value _rear_mode _rear_custom_value ))

(defmethod scout_msgs::ScoutLightCmd
  (:init
   (&key
    ((:cmd_ctrl_allowed __cmd_ctrl_allowed) nil)
    ((:front_mode __front_mode) 0)
    ((:front_custom_value __front_custom_value) 0)
    ((:rear_mode __rear_mode) 0)
    ((:rear_custom_value __rear_custom_value) 0)
    )
   (send-super :init)
   (setq _cmd_ctrl_allowed __cmd_ctrl_allowed)
   (setq _front_mode (round __front_mode))
   (setq _front_custom_value (round __front_custom_value))
   (setq _rear_mode (round __rear_mode))
   (setq _rear_custom_value (round __rear_custom_value))
   self)
  (:cmd_ctrl_allowed
   (&optional __cmd_ctrl_allowed)
   (if __cmd_ctrl_allowed (setq _cmd_ctrl_allowed __cmd_ctrl_allowed)) _cmd_ctrl_allowed)
  (:front_mode
   (&optional __front_mode)
   (if __front_mode (setq _front_mode __front_mode)) _front_mode)
  (:front_custom_value
   (&optional __front_custom_value)
   (if __front_custom_value (setq _front_custom_value __front_custom_value)) _front_custom_value)
  (:rear_mode
   (&optional __rear_mode)
   (if __rear_mode (setq _rear_mode __rear_mode)) _rear_mode)
  (:rear_custom_value
   (&optional __rear_custom_value)
   (if __rear_custom_value (setq _rear_custom_value __rear_custom_value)) _rear_custom_value)
  (:serialization-length
   ()
   (+
    ;; bool _cmd_ctrl_allowed
    1
    ;; uint8 _front_mode
    1
    ;; uint8 _front_custom_value
    1
    ;; uint8 _rear_mode
    1
    ;; uint8 _rear_custom_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd_ctrl_allowed
       (if _cmd_ctrl_allowed (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _front_mode
       (write-byte _front_mode s)
     ;; uint8 _front_custom_value
       (write-byte _front_custom_value s)
     ;; uint8 _rear_mode
       (write-byte _rear_mode s)
     ;; uint8 _rear_custom_value
       (write-byte _rear_custom_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd_ctrl_allowed
     (setq _cmd_ctrl_allowed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _front_mode
     (setq _front_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_custom_value
     (setq _front_custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rear_mode
     (setq _rear_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rear_custom_value
     (setq _rear_custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_msgs::ScoutLightCmd :md5sum-) "42aa2cbe1b10fa7205fd418eae255dfd")
(setf (get scout_msgs::ScoutLightCmd :datatype-) "scout_msgs/ScoutLightCmd")
(setf (get scout_msgs::ScoutLightCmd :definition-)
      "uint8 LIGHT_CONST_OFF = 0
uint8 LIGHT_CONST_ON = 1
uint8 LIGHT_BREATH = 2
uint8 LIGHT_CUSTOM = 3

bool cmd_ctrl_allowed
uint8 front_mode
uint8 front_custom_value
uint8 rear_mode
uint8 rear_custom_value

")



(provide :scout_msgs/ScoutLightCmd "42aa2cbe1b10fa7205fd418eae255dfd")


