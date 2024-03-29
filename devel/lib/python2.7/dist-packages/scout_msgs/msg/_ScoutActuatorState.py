# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from scout_msgs/ScoutActuatorState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ScoutActuatorState(genpy.Message):
  _md5sum = "b7d0dab53d094a83407b250f5f751832"
  _type = "scout_msgs/ScoutActuatorState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)
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
uint8 driver_state"""
  __slots__ = ['motor_id','rpm','current','pulse_count','driver_voltage','driver_temperature','motor_temperature','driver_state']
  _slot_types = ['uint8','int16','float64','int32','float32','float32','int8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       motor_id,rpm,current,pulse_count,driver_voltage,driver_temperature,motor_temperature,driver_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ScoutActuatorState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.motor_id is None:
        self.motor_id = 0
      if self.rpm is None:
        self.rpm = 0
      if self.current is None:
        self.current = 0.
      if self.pulse_count is None:
        self.pulse_count = 0
      if self.driver_voltage is None:
        self.driver_voltage = 0.
      if self.driver_temperature is None:
        self.driver_temperature = 0.
      if self.motor_temperature is None:
        self.motor_temperature = 0
      if self.driver_state is None:
        self.driver_state = 0
    else:
      self.motor_id = 0
      self.rpm = 0
      self.current = 0.
      self.pulse_count = 0
      self.driver_voltage = 0.
      self.driver_temperature = 0.
      self.motor_temperature = 0
      self.driver_state = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_Bhdi2fbB().pack(_x.motor_id, _x.rpm, _x.current, _x.pulse_count, _x.driver_voltage, _x.driver_temperature, _x.motor_temperature, _x.driver_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 25
      (_x.motor_id, _x.rpm, _x.current, _x.pulse_count, _x.driver_voltage, _x.driver_temperature, _x.motor_temperature, _x.driver_state,) = _get_struct_Bhdi2fbB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_Bhdi2fbB().pack(_x.motor_id, _x.rpm, _x.current, _x.pulse_count, _x.driver_voltage, _x.driver_temperature, _x.motor_temperature, _x.driver_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 25
      (_x.motor_id, _x.rpm, _x.current, _x.pulse_count, _x.driver_voltage, _x.driver_temperature, _x.motor_temperature, _x.driver_state,) = _get_struct_Bhdi2fbB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bhdi2fbB = None
def _get_struct_Bhdi2fbB():
    global _struct_Bhdi2fbB
    if _struct_Bhdi2fbB is None:
        _struct_Bhdi2fbB = struct.Struct("<Bhdi2fbB")
    return _struct_Bhdi2fbB
