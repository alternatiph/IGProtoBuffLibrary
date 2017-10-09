// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ChatUpdateStatus.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct IGPChatUpdateStatus: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPChatUpdateStatus"

  var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  mutating func clearIgpRequest() {_storage._igpRequest = nil}

  var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  var igpMessageID: Int64 {
    get {return _storage._igpMessageID}
    set {_uniqueStorage()._igpMessageID = newValue}
  }

  var igpStatus: IGPRoomMessageStatus {
    get {return _storage._igpStatus}
    set {_uniqueStorage()._igpStatus = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageID)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._igpStatus)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMessageID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageID, fieldNumber: 3)
      }
      if _storage._igpStatus != .failed {
        try visitor.visitSingularEnumField(value: _storage._igpStatus, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct IGPChatUpdateStatusResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPChatUpdateStatusResponse"

  var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  mutating func clearIgpResponse() {_storage._igpResponse = nil}

  var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  var igpMessageID: Int64 {
    get {return _storage._igpMessageID}
    set {_uniqueStorage()._igpMessageID = newValue}
  }

  var igpStatus: IGPRoomMessageStatus {
    get {return _storage._igpStatus}
    set {_uniqueStorage()._igpStatus = newValue}
  }

  var igpStatusVersion: Int64 {
    get {return _storage._igpStatusVersion}
    set {_uniqueStorage()._igpStatusVersion = newValue}
  }

  var igpUpdaterAuthorHash: String {
    get {return _storage._igpUpdaterAuthorHash}
    set {_uniqueStorage()._igpUpdaterAuthorHash = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMessageID)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._igpStatus)
        case 5: try decoder.decodeSingularInt64Field(value: &_storage._igpStatusVersion)
        case 6: try decoder.decodeSingularStringField(value: &_storage._igpUpdaterAuthorHash)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMessageID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMessageID, fieldNumber: 3)
      }
      if _storage._igpStatus != .failed {
        try visitor.visitSingularEnumField(value: _storage._igpStatus, fieldNumber: 4)
      }
      if _storage._igpStatusVersion != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpStatusVersion, fieldNumber: 5)
      }
      if !_storage._igpUpdaterAuthorHash.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpUpdaterAuthorHash, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPChatUpdateStatus: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_message_id"),
    4: .standard(proto: "IGP_status"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpMessageID: Int64 = 0
    var _igpStatus: IGPRoomMessageStatus = .failed

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpMessageID = source._igpMessageID
      _igpStatus = source._igpStatus
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPChatUpdateStatus) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpMessageID != other_storage._igpMessageID {return false}
        if _storage._igpStatus != other_storage._igpStatus {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPChatUpdateStatusResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_message_id"),
    4: .standard(proto: "IGP_status"),
    5: .standard(proto: "IGP_status_version"),
    6: .standard(proto: "IGP_updater_author_hash"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpRoomID: Int64 = 0
    var _igpMessageID: Int64 = 0
    var _igpStatus: IGPRoomMessageStatus = .failed
    var _igpStatusVersion: Int64 = 0
    var _igpUpdaterAuthorHash: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpRoomID = source._igpRoomID
      _igpMessageID = source._igpMessageID
      _igpStatus = source._igpStatus
      _igpStatusVersion = source._igpStatusVersion
      _igpUpdaterAuthorHash = source._igpUpdaterAuthorHash
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPChatUpdateStatusResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpMessageID != other_storage._igpMessageID {return false}
        if _storage._igpStatus != other_storage._igpStatus {return false}
        if _storage._igpStatusVersion != other_storage._igpStatusVersion {return false}
        if _storage._igpUpdaterAuthorHash != other_storage._igpUpdaterAuthorHash {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
