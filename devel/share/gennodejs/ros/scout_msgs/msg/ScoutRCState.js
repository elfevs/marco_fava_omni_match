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

class ScoutRCState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swa = null;
      this.swb = null;
      this.swc = null;
      this.swd = null;
      this.stick_right_v = null;
      this.stick_right_h = null;
      this.stick_left_v = null;
      this.stick_left_h = null;
      this.var_a = null;
    }
    else {
      if (initObj.hasOwnProperty('swa')) {
        this.swa = initObj.swa
      }
      else {
        this.swa = 0;
      }
      if (initObj.hasOwnProperty('swb')) {
        this.swb = initObj.swb
      }
      else {
        this.swb = 0;
      }
      if (initObj.hasOwnProperty('swc')) {
        this.swc = initObj.swc
      }
      else {
        this.swc = 0;
      }
      if (initObj.hasOwnProperty('swd')) {
        this.swd = initObj.swd
      }
      else {
        this.swd = 0;
      }
      if (initObj.hasOwnProperty('stick_right_v')) {
        this.stick_right_v = initObj.stick_right_v
      }
      else {
        this.stick_right_v = 0;
      }
      if (initObj.hasOwnProperty('stick_right_h')) {
        this.stick_right_h = initObj.stick_right_h
      }
      else {
        this.stick_right_h = 0;
      }
      if (initObj.hasOwnProperty('stick_left_v')) {
        this.stick_left_v = initObj.stick_left_v
      }
      else {
        this.stick_left_v = 0;
      }
      if (initObj.hasOwnProperty('stick_left_h')) {
        this.stick_left_h = initObj.stick_left_h
      }
      else {
        this.stick_left_h = 0;
      }
      if (initObj.hasOwnProperty('var_a')) {
        this.var_a = initObj.var_a
      }
      else {
        this.var_a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutRCState
    // Serialize message field [swa]
    bufferOffset = _serializer.uint8(obj.swa, buffer, bufferOffset);
    // Serialize message field [swb]
    bufferOffset = _serializer.uint8(obj.swb, buffer, bufferOffset);
    // Serialize message field [swc]
    bufferOffset = _serializer.uint8(obj.swc, buffer, bufferOffset);
    // Serialize message field [swd]
    bufferOffset = _serializer.uint8(obj.swd, buffer, bufferOffset);
    // Serialize message field [stick_right_v]
    bufferOffset = _serializer.int8(obj.stick_right_v, buffer, bufferOffset);
    // Serialize message field [stick_right_h]
    bufferOffset = _serializer.int8(obj.stick_right_h, buffer, bufferOffset);
    // Serialize message field [stick_left_v]
    bufferOffset = _serializer.int8(obj.stick_left_v, buffer, bufferOffset);
    // Serialize message field [stick_left_h]
    bufferOffset = _serializer.int8(obj.stick_left_h, buffer, bufferOffset);
    // Serialize message field [var_a]
    bufferOffset = _serializer.int8(obj.var_a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutRCState
    let len;
    let data = new ScoutRCState(null);
    // Deserialize message field [swa]
    data.swa = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [swb]
    data.swb = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [swc]
    data.swc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [swd]
    data.swd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stick_right_v]
    data.stick_right_v = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stick_right_h]
    data.stick_right_h = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stick_left_v]
    data.stick_left_v = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stick_left_h]
    data.stick_left_h = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [var_a]
    data.var_a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutRCState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c78447ebdf8846481ba608e1b4be107c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 swa
    uint8 swb
    uint8 swc
    uint8 swd
    
    int8 stick_right_v
    int8 stick_right_h
    int8 stick_left_v
    int8 stick_left_h
    int8 var_a
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutRCState(null);
    if (msg.swa !== undefined) {
      resolved.swa = msg.swa;
    }
    else {
      resolved.swa = 0
    }

    if (msg.swb !== undefined) {
      resolved.swb = msg.swb;
    }
    else {
      resolved.swb = 0
    }

    if (msg.swc !== undefined) {
      resolved.swc = msg.swc;
    }
    else {
      resolved.swc = 0
    }

    if (msg.swd !== undefined) {
      resolved.swd = msg.swd;
    }
    else {
      resolved.swd = 0
    }

    if (msg.stick_right_v !== undefined) {
      resolved.stick_right_v = msg.stick_right_v;
    }
    else {
      resolved.stick_right_v = 0
    }

    if (msg.stick_right_h !== undefined) {
      resolved.stick_right_h = msg.stick_right_h;
    }
    else {
      resolved.stick_right_h = 0
    }

    if (msg.stick_left_v !== undefined) {
      resolved.stick_left_v = msg.stick_left_v;
    }
    else {
      resolved.stick_left_v = 0
    }

    if (msg.stick_left_h !== undefined) {
      resolved.stick_left_h = msg.stick_left_h;
    }
    else {
      resolved.stick_left_h = 0
    }

    if (msg.var_a !== undefined) {
      resolved.var_a = msg.var_a;
    }
    else {
      resolved.var_a = 0
    }

    return resolved;
    }
};

module.exports = ScoutRCState;
