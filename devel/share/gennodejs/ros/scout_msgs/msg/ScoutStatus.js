// Auto-generated. Do not edit!

// (in-package scout_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ScoutActuatorState = require('./ScoutActuatorState.js');
let ScoutLightState = require('./ScoutLightState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ScoutStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.vehicle_state = null;
      this.control_mode = null;
      this.error_code = null;
      this.battery_voltage = null;
      this.actuator_states = null;
      this.light_control_enabled = null;
      this.front_light_state = null;
      this.rear_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_state')) {
        this.vehicle_state = initObj.vehicle_state
      }
      else {
        this.vehicle_state = 0;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('actuator_states')) {
        this.actuator_states = initObj.actuator_states
      }
      else {
        this.actuator_states = new Array(4).fill(new ScoutActuatorState());
      }
      if (initObj.hasOwnProperty('light_control_enabled')) {
        this.light_control_enabled = initObj.light_control_enabled
      }
      else {
        this.light_control_enabled = false;
      }
      if (initObj.hasOwnProperty('front_light_state')) {
        this.front_light_state = initObj.front_light_state
      }
      else {
        this.front_light_state = new ScoutLightState();
      }
      if (initObj.hasOwnProperty('rear_light_state')) {
        this.rear_light_state = initObj.rear_light_state
      }
      else {
        this.rear_light_state = new ScoutLightState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float64(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float64(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [vehicle_state]
    bufferOffset = _serializer.uint8(obj.vehicle_state, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint16(obj.error_code, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float64(obj.battery_voltage, buffer, bufferOffset);
    // Check that the constant length array field [actuator_states] has the right length
    if (obj.actuator_states.length !== 4) {
      throw new Error('Unable to serialize array field actuator_states - length must be 4')
    }
    // Serialize message field [actuator_states]
    obj.actuator_states.forEach((val) => {
      bufferOffset = ScoutActuatorState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [light_control_enabled]
    bufferOffset = _serializer.bool(obj.light_control_enabled, buffer, bufferOffset);
    // Serialize message field [front_light_state]
    bufferOffset = ScoutLightState.serialize(obj.front_light_state, buffer, bufferOffset);
    // Serialize message field [rear_light_state]
    bufferOffset = ScoutLightState.serialize(obj.rear_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutStatus
    let len;
    let data = new ScoutStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicle_state]
    data.vehicle_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actuator_states]
    len = 4;
    data.actuator_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actuator_states[i] = ScoutActuatorState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [light_control_enabled]
    data.light_control_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_light_state]
    data.front_light_state = ScoutLightState.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear_light_state]
    data.rear_light_state = ScoutLightState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 133;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30969292998faa8c3876fbf77f2f0ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 MOTOR_ID_FRONT_RIGHT = 0
    int8 MOTOR_ID_FRONT_LEFT = 1
    int8 MOTOR_ID_REAR_RIGHT = 2
    int8 MOTOR_ID_REAR_LEFT = 3
    
    int8 LIGHT_ID_FRONT = 0
    int8 LIGHT_ID_REAR = 1
    
    # motion state
    float64 linear_velocity
    float64 angular_velocity
    
    # base state
    uint8 vehicle_state
    uint8 control_mode
    uint16 error_code
    float64 battery_voltage
    
    # motor state
    ScoutActuatorState[4] actuator_states
    
    # light state
    bool light_control_enabled
    ScoutLightState front_light_state
    ScoutLightState rear_light_state
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: scout_msgs/ScoutActuatorState
    #define DRIVER_STATE_INPUT_VOLTAGE_LOW_MASK ((uint8_t)0x01)
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
    ================================================================================
    MSG: scout_msgs/ScoutLightState
    uint8 mode
    uint8 custom_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    if (msg.vehicle_state !== undefined) {
      resolved.vehicle_state = msg.vehicle_state;
    }
    else {
      resolved.vehicle_state = 0
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.actuator_states !== undefined) {
      resolved.actuator_states = new Array(4)
      for (let i = 0; i < resolved.actuator_states.length; ++i) {
        if (msg.actuator_states.length > i) {
          resolved.actuator_states[i] = ScoutActuatorState.Resolve(msg.actuator_states[i]);
        }
        else {
          resolved.actuator_states[i] = new ScoutActuatorState();
        }
      }
    }
    else {
      resolved.actuator_states = new Array(4).fill(new ScoutActuatorState())
    }

    if (msg.light_control_enabled !== undefined) {
      resolved.light_control_enabled = msg.light_control_enabled;
    }
    else {
      resolved.light_control_enabled = false
    }

    if (msg.front_light_state !== undefined) {
      resolved.front_light_state = ScoutLightState.Resolve(msg.front_light_state)
    }
    else {
      resolved.front_light_state = new ScoutLightState()
    }

    if (msg.rear_light_state !== undefined) {
      resolved.rear_light_state = ScoutLightState.Resolve(msg.rear_light_state)
    }
    else {
      resolved.rear_light_state = new ScoutLightState()
    }

    return resolved;
    }
};

// Constants for message
ScoutStatus.Constants = {
  MOTOR_ID_FRONT_RIGHT: 0,
  MOTOR_ID_FRONT_LEFT: 1,
  MOTOR_ID_REAR_RIGHT: 2,
  MOTOR_ID_REAR_LEFT: 3,
  LIGHT_ID_FRONT: 0,
  LIGHT_ID_REAR: 1,
}

module.exports = ScoutStatus;
