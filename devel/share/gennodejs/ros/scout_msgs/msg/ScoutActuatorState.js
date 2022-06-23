// Auto-generated. Do not edit!

// (in-package scout_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ScoutActuatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_id = null;
      this.rpm = null;
      this.current = null;
      this.pulse_count = null;
      this.driver_voltage = null;
      this.driver_temperature = null;
      this.motor_temperature = null;
      this.driver_state = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_id')) {
        this.motor_id = initObj.motor_id
      }
      else {
        this.motor_id = 0;
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('pulse_count')) {
        this.pulse_count = initObj.pulse_count
      }
      else {
        this.pulse_count = 0;
      }
      if (initObj.hasOwnProperty('driver_voltage')) {
        this.driver_voltage = initObj.driver_voltage
      }
      else {
        this.driver_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('driver_temperature')) {
        this.driver_temperature = initObj.driver_temperature
      }
      else {
        this.driver_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('motor_temperature')) {
        this.motor_temperature = initObj.motor_temperature
      }
      else {
        this.motor_temperature = 0;
      }
      if (initObj.hasOwnProperty('driver_state')) {
        this.driver_state = initObj.driver_state
      }
      else {
        this.driver_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutActuatorState
    // Serialize message field [motor_id]
    bufferOffset = _serializer.uint8(obj.motor_id, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.int16(obj.rpm, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float64(obj.current, buffer, bufferOffset);
    // Serialize message field [pulse_count]
    bufferOffset = _serializer.int32(obj.pulse_count, buffer, bufferOffset);
    // Serialize message field [driver_voltage]
    bufferOffset = _serializer.float32(obj.driver_voltage, buffer, bufferOffset);
    // Serialize message field [driver_temperature]
    bufferOffset = _serializer.float32(obj.driver_temperature, buffer, bufferOffset);
    // Serialize message field [motor_temperature]
    bufferOffset = _serializer.int8(obj.motor_temperature, buffer, bufferOffset);
    // Serialize message field [driver_state]
    bufferOffset = _serializer.uint8(obj.driver_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutActuatorState
    let len;
    let data = new ScoutActuatorState(null);
    // Deserialize message field [motor_id]
    data.motor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pulse_count]
    data.pulse_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driver_voltage]
    data.driver_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [driver_temperature]
    data.driver_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_temperature]
    data.motor_temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [driver_state]
    data.driver_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutActuatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7d0dab53d094a83407b250f5f751832';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutActuatorState(null);
    if (msg.motor_id !== undefined) {
      resolved.motor_id = msg.motor_id;
    }
    else {
      resolved.motor_id = 0
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.pulse_count !== undefined) {
      resolved.pulse_count = msg.pulse_count;
    }
    else {
      resolved.pulse_count = 0
    }

    if (msg.driver_voltage !== undefined) {
      resolved.driver_voltage = msg.driver_voltage;
    }
    else {
      resolved.driver_voltage = 0.0
    }

    if (msg.driver_temperature !== undefined) {
      resolved.driver_temperature = msg.driver_temperature;
    }
    else {
      resolved.driver_temperature = 0.0
    }

    if (msg.motor_temperature !== undefined) {
      resolved.motor_temperature = msg.motor_temperature;
    }
    else {
      resolved.motor_temperature = 0
    }

    if (msg.driver_state !== undefined) {
      resolved.driver_state = msg.driver_state;
    }
    else {
      resolved.driver_state = 0
    }

    return resolved;
    }
};

module.exports = ScoutActuatorState;
