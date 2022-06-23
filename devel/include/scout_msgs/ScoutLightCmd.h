// Generated by gencpp from file scout_msgs/ScoutLightCmd.msg
// DO NOT EDIT!


#ifndef SCOUT_MSGS_MESSAGE_SCOUTLIGHTCMD_H
#define SCOUT_MSGS_MESSAGE_SCOUTLIGHTCMD_H


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
struct ScoutLightCmd_
{
  typedef ScoutLightCmd_<ContainerAllocator> Type;

  ScoutLightCmd_()
    : cmd_ctrl_allowed(false)
    , front_mode(0)
    , front_custom_value(0)
    , rear_mode(0)
    , rear_custom_value(0)  {
    }
  ScoutLightCmd_(const ContainerAllocator& _alloc)
    : cmd_ctrl_allowed(false)
    , front_mode(0)
    , front_custom_value(0)
    , rear_mode(0)
    , rear_custom_value(0)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_ctrl_allowed_type;
  _cmd_ctrl_allowed_type cmd_ctrl_allowed;

   typedef uint8_t _front_mode_type;
  _front_mode_type front_mode;

   typedef uint8_t _front_custom_value_type;
  _front_custom_value_type front_custom_value;

   typedef uint8_t _rear_mode_type;
  _rear_mode_type rear_mode;

   typedef uint8_t _rear_custom_value_type;
  _rear_custom_value_type rear_custom_value;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(LIGHT_CONST_OFF)
  #undef LIGHT_CONST_OFF
#endif
#if defined(_WIN32) && defined(LIGHT_CONST_ON)
  #undef LIGHT_CONST_ON
#endif
#if defined(_WIN32) && defined(LIGHT_BREATH)
  #undef LIGHT_BREATH
#endif
#if defined(_WIN32) && defined(LIGHT_CUSTOM)
  #undef LIGHT_CUSTOM
#endif

  enum {
    LIGHT_CONST_OFF = 0u,
    LIGHT_CONST_ON = 1u,
    LIGHT_BREATH = 2u,
    LIGHT_CUSTOM = 3u,
  };


  typedef boost::shared_ptr< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> const> ConstPtr;

}; // struct ScoutLightCmd_

typedef ::scout_msgs::ScoutLightCmd_<std::allocator<void> > ScoutLightCmd;

typedef boost::shared_ptr< ::scout_msgs::ScoutLightCmd > ScoutLightCmdPtr;
typedef boost::shared_ptr< ::scout_msgs::ScoutLightCmd const> ScoutLightCmdConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scout_msgs::ScoutLightCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scout_msgs::ScoutLightCmd_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutLightCmd_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_ctrl_allowed == rhs.cmd_ctrl_allowed &&
    lhs.front_mode == rhs.front_mode &&
    lhs.front_custom_value == rhs.front_custom_value &&
    lhs.rear_mode == rhs.rear_mode &&
    lhs.rear_custom_value == rhs.rear_custom_value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scout_msgs::ScoutLightCmd_<ContainerAllocator1> & lhs, const ::scout_msgs::ScoutLightCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scout_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "42aa2cbe1b10fa7205fd418eae255dfd";
  }

  static const char* value(const ::scout_msgs::ScoutLightCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x42aa2cbe1b10fa72ULL;
  static const uint64_t static_value2 = 0x05fd418eae255dfdULL;
};

template<class ContainerAllocator>
struct DataType< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scout_msgs/ScoutLightCmd";
  }

  static const char* value(const ::scout_msgs::ScoutLightCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 LIGHT_CONST_OFF = 0\n"
"uint8 LIGHT_CONST_ON = 1\n"
"uint8 LIGHT_BREATH = 2\n"
"uint8 LIGHT_CUSTOM = 3\n"
"\n"
"bool cmd_ctrl_allowed\n"
"uint8 front_mode\n"
"uint8 front_custom_value\n"
"uint8 rear_mode\n"
"uint8 rear_custom_value\n"
;
  }

  static const char* value(const ::scout_msgs::ScoutLightCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_ctrl_allowed);
      stream.next(m.front_mode);
      stream.next(m.front_custom_value);
      stream.next(m.rear_mode);
      stream.next(m.rear_custom_value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScoutLightCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scout_msgs::ScoutLightCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scout_msgs::ScoutLightCmd_<ContainerAllocator>& v)
  {
    s << indent << "cmd_ctrl_allowed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_ctrl_allowed);
    s << indent << "front_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.front_mode);
    s << indent << "front_custom_value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.front_custom_value);
    s << indent << "rear_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rear_mode);
    s << indent << "rear_custom_value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rear_custom_value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCOUT_MSGS_MESSAGE_SCOUTLIGHTCMD_H
