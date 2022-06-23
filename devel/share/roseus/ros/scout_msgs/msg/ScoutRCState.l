;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutRCState)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutRCState (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTRCSTATE")
  (make-package "SCOUT_MSGS::SCOUTRCSTATE"))

(in-package "ROS")
;;//! \htmlinclude ScoutRCState.msg.html


(defclass scout_msgs::ScoutRCState
  :super ros::object
  :slots (_swa _swb _swc _swd _stick_right_v _stick_right_h _stick_left_v _stick_left_h _var_a ))

(defmethod scout_msgs::ScoutRCState
  (:init
   (&key
    ((:swa __swa) 0)
    ((:swb __swb) 0)
    ((:swc __swc) 0)
    ((:swd __swd) 0)
    ((:stick_right_v __stick_right_v) 0)
    ((:stick_right_h __stick_right_h) 0)
    ((:stick_left_v __stick_left_v) 0)
    ((:stick_left_h __stick_left_h) 0)
    ((:var_a __var_a) 0)
    )
   (send-super :init)
   (setq _swa (round __swa))
   (setq _swb (round __swb))
   (setq _swc (round __swc))
   (setq _swd (round __swd))
   (setq _stick_right_v (round __stick_right_v))
   (setq _stick_right_h (round __stick_right_h))
   (setq _stick_left_v (round __stick_left_v))
   (setq _stick_left_h (round __stick_left_h))
   (setq _var_a (round __var_a))
   self)
  (:swa
   (&optional __swa)
   (if __swa (setq _swa __swa)) _swa)
  (:swb
   (&optional __swb)
   (if __swb (setq _swb __swb)) _swb)
  (:swc
   (&optional __swc)
   (if __swc (setq _swc __swc)) _swc)
  (:swd
   (&optional __swd)
   (if __swd (setq _swd __swd)) _swd)
  (:stick_right_v
   (&optional __stick_right_v)
   (if __stick_right_v (setq _stick_right_v __stick_right_v)) _stick_right_v)
  (:stick_right_h
   (&optional __stick_right_h)
   (if __stick_right_h (setq _stick_right_h __stick_right_h)) _stick_right_h)
  (:stick_left_v
   (&optional __stick_left_v)
   (if __stick_left_v (setq _stick_left_v __stick_left_v)) _stick_left_v)
  (:stick_left_h
   (&optional __stick_left_h)
   (if __stick_left_h (setq _stick_left_h __stick_left_h)) _stick_left_h)
  (:var_a
   (&optional __var_a)
   (if __var_a (setq _var_a __var_a)) _var_a)
  (:serialization-length
   ()
   (+
    ;; uint8 _swa
    1
    ;; uint8 _swb
    1
    ;; uint8 _swc
    1
    ;; uint8 _swd
    1
    ;; int8 _stick_right_v
    1
    ;; int8 _stick_right_h
    1
    ;; int8 _stick_left_v
    1
    ;; int8 _stick_left_h
    1
    ;; int8 _var_a
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _swa
       (write-byte _swa s)
     ;; uint8 _swb
       (write-byte _swb s)
     ;; uint8 _swc
       (write-byte _swc s)
     ;; uint8 _swd
       (write-byte _swd s)
     ;; int8 _stick_right_v
       (write-byte _stick_right_v s)
     ;; int8 _stick_right_h
       (write-byte _stick_right_h s)
     ;; int8 _stick_left_v
       (write-byte _stick_left_v s)
     ;; int8 _stick_left_h
       (write-byte _stick_left_h s)
     ;; int8 _var_a
       (write-byte _var_a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _swa
     (setq _swa (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _swb
     (setq _swb (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _swc
     (setq _swc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _swd
     (setq _swd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _stick_right_v
     (setq _stick_right_v (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stick_right_v 127) (setq _stick_right_v (- _stick_right_v 256)))
   ;; int8 _stick_right_h
     (setq _stick_right_h (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stick_right_h 127) (setq _stick_right_h (- _stick_right_h 256)))
   ;; int8 _stick_left_v
     (setq _stick_left_v (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stick_left_v 127) (setq _stick_left_v (- _stick_left_v 256)))
   ;; int8 _stick_left_h
     (setq _stick_left_h (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stick_left_h 127) (setq _stick_left_h (- _stick_left_h 256)))
   ;; int8 _var_a
     (setq _var_a (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _var_a 127) (setq _var_a (- _var_a 256)))
   ;;
   self)
  )

(setf (get scout_msgs::ScoutRCState :md5sum-) "c78447ebdf8846481ba608e1b4be107c")
(setf (get scout_msgs::ScoutRCState :datatype-) "scout_msgs/ScoutRCState")
(setf (get scout_msgs::ScoutRCState :definition-)
      "uint8 swa
uint8 swb
uint8 swc
uint8 swd

int8 stick_right_v
int8 stick_right_h
int8 stick_left_v
int8 stick_left_h
int8 var_a
")



(provide :scout_msgs/ScoutRCState "c78447ebdf8846481ba608e1b4be107c")


