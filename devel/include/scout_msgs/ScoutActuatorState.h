// Generated by gencpp from file scout_msgs/ScoutActuatorState.msg
// DO NOT EDIT!


#ifndef SCOUT_MSGS_MESSAGE_SCOUTACTUATORSTATE_H
#define SCOUT_MSGS_MESSAGE_SCOUTACTUATORSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scout_msgs
{
template <class ContainerAllocator>
struct ScoutActuatorState_
{
  typedef ScoutActuatorState_<ContainerAllocator> Type;

  ScoutActuatorState_()
    : motor_id(0)
    , rpm(0)
    , current(0.0)
    , pulse_count(0)
    , driver_voltage(0.0)
    , driver_temperature(0.0)
    , motor_temperature(0)
    , driver_state(0)  {
    }
  ScoutActuatorState_(const ContainerAllocator& _alloc)
    : motor_id(0)
    , rpm(0)
    , current(0.0)
    , pulse_count(0)
    , driver_voltage(0.0)
    , driver_temperature(0.0)
    , motor_temperature(0)
    , driver_state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _motor_id_type;
  _motor_id_type motor_id;

   typedef int16_t _rpm_type;
  _rpm_type rpm;

   typedef double _current_type;
  _current_type current;

   typedef int32_t _pulse_count_type;
  _pulse_count_type pulse_count;

   typedef float _driver_voltage_type;
  _driver_voltage_type driver_voltage;

   typedef float _driver_temperature_type;
  _driver_temperature_type driver_temperature;

   typedef int8_t _motor_temperature_type;
  _motor_temperature_type motor_temperature;

   typedef uint8_t _driver_state_type;
  _driver_state_type driver_state;





  typedef boost::shared_ptr< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> const> ConstPtr;

}; // struct ScoutActuatorState_

typedef ::scout_msgs::ScoutActuatorState_<std::allocator<void> > ScoutActuatorState;

typedef boost::shared_ptr< ::scout_msgs::ScoutActuatorState > ScoutActuatorStatePtr;
typedef boost::shared_ptr< ::scout_msgs::ScoutActuatorState const> ScoutActuatorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scout_msgs::ScoutActuatorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scout_msgs::ScoutActuatorState_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutActuatorState_<ContainerAllocator2> & rhs)
{
  return lhs.motor_id == rhs.motor_id &&
    lhs.rpm == rhs.rpm &&
    lhs.current == rhs.current &&
    lhs.pulse_count == rhs.pulse_count &&
    lhs.driver_voltage == rhs.driver_voltage &&
    lhs.driver_temperature == rhs.driver_temperature &&
    lhs.motor_temperature == rhs.motor_temperature &&
    lhs.driver_state == rhs.driver_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scout_msgs::ScoutActuatorState_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutActuatorState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scout_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b7d0dab53d094a83407b250f5f751832";
  }

  static const char* value(const ::scout_msgs::ScoutActuatorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb7d0dab53d094a83ULL;
  static const uint64_t static_value2 = 0x407b250f5f751832ULL;
};

template<class ContainerAllocator>
struct DataType< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scout_msgs/ScoutActuatorState";
  }

  static const char* value(const ::scout_msgs::ScoutActuatorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)\n"
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
;
  }

  static const char* value(const ::scout_msgs::ScoutActuatorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motor_id);
      stream.next(m.rpm);
      stream.next(m.current);
      stream.next(m.pulse_count);
      stream.next(m.driver_voltage);
      stream.next(m.driver_temperature);
      stream.next(m.motor_temperature);
      stream.next(m.driver_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScoutActuatorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scout_msgs::ScoutActuatorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scout_msgs::ScoutActuatorState_<ContainerAllocator>& v)
  {
    s << indent << "motor_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor_id);
    s << indent << "rpm: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rpm);
    s << indent << "current: ";
    Printer<double>::stream(s, indent + "  ", v.current);
    s << indent << "pulse_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pulse_count);
    s << indent << "driver_voltage: ";
    Printer<float>::stream(s, indent + "  ", v.driver_voltage);
    s << indent << "driver_temperature: ";
    Printer<float>::stream(s, indent + "  ", v.driver_temperature);
    s << indent << "motor_temperature: ";
    Printer<int8_t>::stream(s, indent + "  ", v.motor_temperature);
    s << indent << "driver_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.driver_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCOUT_MSGS_MESSAGE_SCOUTACTUATORSTATE_H