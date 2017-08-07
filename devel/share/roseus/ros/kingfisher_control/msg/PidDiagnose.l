;; Auto-generated. Do not edit!


(when (boundp 'kingfisher_control::PidDiagnose)
  (if (not (find-package "KINGFISHER_CONTROL"))
    (make-package "KINGFISHER_CONTROL"))
  (shadow 'PidDiagnose (find-package "KINGFISHER_CONTROL")))
(unless (find-package "KINGFISHER_CONTROL::PIDDIAGNOSE")
  (make-package "KINGFISHER_CONTROL::PIDDIAGNOSE"))

(in-package "ROS")
;;//! \htmlinclude PidDiagnose.msg.html


(defclass kingfisher_control::PidDiagnose
  :super ros::object
  :slots (_P _I _D _PID _Error _Setpoint _Derivative _Integral ))

(defmethod kingfisher_control::PidDiagnose
  (:init
   (&key
    ((:P __P) 0.0)
    ((:I __I) 0.0)
    ((:D __D) 0.0)
    ((:PID __PID) 0.0)
    ((:Error __Error) 0.0)
    ((:Setpoint __Setpoint) 0.0)
    ((:Derivative __Derivative) 0.0)
    ((:Integral __Integral) 0.0)
    )
   (send-super :init)
   (setq _P (float __P))
   (setq _I (float __I))
   (setq _D (float __D))
   (setq _PID (float __PID))
   (setq _Error (float __Error))
   (setq _Setpoint (float __Setpoint))
   (setq _Derivative (float __Derivative))
   (setq _Integral (float __Integral))
   self)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:I
   (&optional __I)
   (if __I (setq _I __I)) _I)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:PID
   (&optional __PID)
   (if __PID (setq _PID __PID)) _PID)
  (:Error
   (&optional __Error)
   (if __Error (setq _Error __Error)) _Error)
  (:Setpoint
   (&optional __Setpoint)
   (if __Setpoint (setq _Setpoint __Setpoint)) _Setpoint)
  (:Derivative
   (&optional __Derivative)
   (if __Derivative (setq _Derivative __Derivative)) _Derivative)
  (:Integral
   (&optional __Integral)
   (if __Integral (setq _Integral __Integral)) _Integral)
  (:serialization-length
   ()
   (+
    ;; float32 _P
    4
    ;; float32 _I
    4
    ;; float32 _D
    4
    ;; float32 _PID
    4
    ;; float32 _Error
    4
    ;; float32 _Setpoint
    4
    ;; float32 _Derivative
    4
    ;; float32 _Integral
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _P
       (sys::poke _P (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _I
       (sys::poke _I (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _D
       (sys::poke _D (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PID
       (sys::poke _PID (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Error
       (sys::poke _Error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Setpoint
       (sys::poke _Setpoint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Derivative
       (sys::poke _Derivative (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Integral
       (sys::poke _Integral (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _P
     (setq _P (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _I
     (setq _I (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _D
     (setq _D (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PID
     (setq _PID (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Error
     (setq _Error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Setpoint
     (setq _Setpoint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Derivative
     (setq _Derivative (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Integral
     (setq _Integral (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kingfisher_control::PidDiagnose :md5sum-) "178ff46e4ffd1a4c9cbf9be267502845")
(setf (get kingfisher_control::PidDiagnose :datatype-) "kingfisher_control/PidDiagnose")
(setf (get kingfisher_control::PidDiagnose :definition-)
      "float32 P
float32 I
float32 D
float32 PID
float32 Error
float32 Setpoint
float32 Derivative
float32 Integral


")



(provide :kingfisher_control/PidDiagnose "178ff46e4ffd1a4c9cbf9be267502845")


