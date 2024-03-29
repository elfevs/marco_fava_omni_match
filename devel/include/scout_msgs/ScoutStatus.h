// Generated by gencpp from file scout_msgs/ScoutStatus.msg
// DO NOT EDIT!


#ifndef SCOUT_MSGS_MESSAGE_SCOUTSTATUS_H
#define SCOUT_MSGS_MESSAGE_SCOUTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <scout_msgs/ScoutActuatorState.h>
#include <scout_msgs/ScoutLightState.h>
#include <scout_msgs/ScoutLightState.h>

namespace scout_msgs
{
template <class ContainerAllocator>
struct ScoutStatus_
{
  typedef ScoutStatus_<ContainerAllocator> Type;

  ScoutStatus_()
    : header()
    , linear_velocity(0.0)
    , angular_velocity(0.0)
    , vehicle_state(0)
    , control_mode(0)
    , error_code(0)
    , battery_voltage(0.0)
    , actuator_states()
    , light_control_enabled(false)
    , front_light_state()
    , rear_light_state()  {
    }
  ScoutStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , linear_velocity(0.0)
    , angular_velocity(0.0)
    , vehicle_state(0)
    , control_mode(0)
    , error_code(0)
    , battery_voltage(0.0)
    , actuator_states()
    , light_control_enabled(false)
    , front_light_state(_alloc)
    , rear_light_state(_alloc)  {
  (void)_alloc;
      actuator_states.assign( ::scout_msgs::ScoutActuatorState_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _linear_velocity_type;
  _linear_velocity_type linear_velocity;

   typedef double _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef uint8_t _vehicle_state_type;
  _vehicle_state_type vehicle_state;

   typedef uint8_t _control_mode_type;
  _control_mode_type control_mode;

   typedef uint16_t _error_code_type;
  _error_code_type error_code;

   typedef double _battery_voltage_type;
  _battery_voltage_type battery_voltage;

   typedef boost::array< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> , 4>  _actuator_states_type;
  _actuator_states_type actuator_states;

   typedef uint8_t _light_control_enabled_type;
  _light_control_enabled_type light_control_enabled;

   typedef  ::scout_msgs::ScoutLightState_<ContainerAllocator>  _front_light_state_type;
  _front_light_state_type front_light_state;

   typedef  ::scout_msgs::ScoutLightState_<ContainerAllocator>  _rear_light_state_type;
  _rear_light_state_type rear_light_state;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MOTOR_ID_FRONT_RIGHT)
  #undef MOTOR_ID_FRONT_RIGHT
#endif
#if defined(_WIN32) && defined(MOTOR_ID_FRONT_LEFT)
  #undef MOTOR_ID_FRONT_LEFT
#endif
#if defined(_WIN32) && defined(MOTOR_ID_REAR_RIGHT)
  #undef MOTOR_ID_REAR_RIGHT
#endif
#if defined(_WIN32) && defined(MOTOR_ID_REAR_LEFT)
  #undef MOTOR_ID_REAR_LEFT
#endif
#if defined(_WIN32) && defined(LIGHT_ID_FRONT)
  #undef LIGHT_ID_FRONT
#endif
#if defined(_WIN32) && defined(LIGHT_ID_REAR)
  #undef LIGHT_ID_REAR
#endif

  enum {
    MOTOR_ID_FRONT_RIGHT = 0,
    MOTOR_ID_FRONT_LEFT = 1,
    MOTOR_ID_REAR_RIGHT = 2,
    MOTOR_ID_REAR_LEFT = 3,
    LIGHT_ID_FRONT = 0,
    LIGHT_ID_REAR = 1,
  };


  typedef boost::shared_ptr< ::scout_msgs::ScoutStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scout_msgs::ScoutStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ScoutStatus_

typedef ::scout_msgs::ScoutStatus_<std::allocator<void> > ScoutStatus;

typedef boost::shared_ptr< ::scout_msgs::ScoutStatus > ScoutStatusPtr;
typedef boost::shared_ptr< ::scout_msgs::ScoutStatus const> ScoutStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scout_msgs::ScoutStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scout_msgs::ScoutStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scout_msgs::ScoutStatus_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.linear_velocity == rhs.linear_velocity &&
    lhs.angular_velocity == rhs.angular_velocity &&
    lhs.vehicle_state == rhs.vehicle_state &&
    lhs.control_mode == rhs.control_mode &&
    lhs.error_code == rhs.error_code &&
    lhs.battery_voltage == rhs.battery_voltage &&
    lhs.actuator_states == rhs.actuator_states &&
    lhs.light_control_enabled == rhs.light_control_enabled &&
    lhs.front_light_state == rhs.front_light_state &&
    lhs.rear_light_state == rhs.rear_light_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scout_msgs::ScoutStatus_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scout_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30969292998faa8c3876fbf77f2f0ee4";
  }

  static const char* value(const ::scout_msgs::ScoutStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30969292998faa8cULL;
  static const uint64_t static_value2 = 0x3876fbf77f2f0ee4ULL;
};

template<class ContainerAllocator>
struct DataType< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scout_msgs/ScoutStatus";
  }

  static const char* value(const ::scout_msgs::ScoutStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"int8 MOTOR_ID_FRONT_RIGHT = 0\n"
"int8 MOTOR_ID_FRONT_LEFT = 1\n"
"int8 MOTOR_ID_REAR_RIGHT = 2\n"
"int8 MOTOR_ID_REAR_LEFT = 3\n"
"\n"
"int8 LIGHT_ID_FRONT = 0\n"
"int8 LIGHT_ID_REAR = 1\n"
"\n"
"# motion state\n"
"float64 linear_velocity\n"
"float64 angular_velocity\n"
"\n"
"# base state\n"
"uint8 vehicle_state\n"
"uint8 control_mode\n"
"uint16 error_code\n"
"float64 battery_voltage\n"
"\n"
"# motor state\n"
"ScoutActuatorState[4] actuator_states\n"
"\n"
"# light state\n"
"bool light_control_enabled\n"
"ScoutLightState front_light_state\n"
"ScoutLightState rear_light_state\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: scout_msgs/ScoutActuatorState\n"
"#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)\n"
"#define DRIVER_STATE_MOTOR_OVERHEAT_MASK ((uint8_t)0x02)\n"
"#define DRIVER_STATE_DRIVER_OVERLOAD_MASK ((uint8_t)0x04)\n"
"#define DRIVER_STATE_DRIVER_OVERHEAT_MASK ((uint8_t)0x08)\n"
"#define DRIVER_STATE_SENSOR_FAULT_MASK ((uint8_t)0x10)\n"
"#define DRIVER_STATE_DRIVER_FAULT_MASK ((uint8_t)0x20)\n"
"#define DRIVER_STATE_DRIVER_ENABLED_MASK ((uint8_t)0x40)\n"
"#define DRIVER_STATE_DRIVER_RESET_MASK ((uint8_t)0x80)\n"
"\n"
"uint8 motor_id\n"
"int16 rpm\n"
"float64 current\n"
"int32 pulse_count\n"
"\n"
"float32 driver_voltage\n"
"float32 driver_temperature\n"
"int8 motor_temperature\n"
"uint8 driver_state\n"
"================================================================================\n"
"MSG: scout_msgs/ScoutLightState\n"
"uint8 mode\n"
"uint8 custom_value\n"
;
  }

  static const char* value(const ::scout_msgs::ScoutStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.linear_velocity);
      stream.next(m.angular_velocity);
      stream.next(m.vehicle_state);
      stream.next(m.control_mode);
      stream.next(m.error_code);
      stream.next(m.battery_voltage);
      stream.next(m.actuator_states);
      stream.next(m.light_control_enabled);
      stream.next(m.front_light_state);
      stream.next(m.rear_light_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScoutStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scout_msgs::ScoutStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scout_msgs::ScoutStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "linear_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.linear_velocity);
    s << indent << "angular_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "vehicle_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vehicle_state);
    s << indent << "control_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_mode);
    s << indent << "error_code: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "battery_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.battery_voltage);
    s << indent << "actuator_states[]" << std::endl;
    for (size_t i = 0; i < v.actuator_states.size(); ++i)
    {
      s << indent << "  actuator_states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >::stream(s, indent + "    ", v.actuator_states[i]);
    }
    s << indent << "light_control_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.light_control_enabled);
    s << indent << "front_light_state: ";
    s << std::endl;
    Printer< ::scout_msgs::ScoutLightState_<ContainerAllocator> >::stream(s, indent + "  ", v.front_light_state);
    s << indent << "rear_light_state: ";
    s << std::endl;
    Printer< ::scout_msgs::ScoutLightState_<ContainerAllocator> >::stream(s, indent + "  ", v.rear_light_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCOUT_MSGS_MESSAGE_SCOUTSTATUS_H
