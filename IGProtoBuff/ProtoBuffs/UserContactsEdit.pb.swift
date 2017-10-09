// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserContactsEdit.proto
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

struct IGPUserContactsEdit: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPUserContactsEdit"

  var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  mutating func clearIgpRequest() {_storage._igpRequest = nil}

  var igpPhone: Int64 {
    get {return _storage._igpPhone}
    set {_uniqueStorage()._igpPhone = newValue}
  }

  var igpFirstName: String {
    get {return _storage._igpFirstName}
    set {_uniqueStorage()._igpFirstName = newValue}
  }

  var igpLastName: String {
    get {return _storage._igpLastName}
    set {_uniqueStorage()._igpLastName = newValue}
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpPhone)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpFirstName)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpLastName)
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
      if _storage._igpPhone != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpPhone, fieldNumber: 2)
      }
      if !_storage._igpFirstName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpFirstName, fieldNumber: 3)
      }
      if !_storage._igpLastName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpLastName, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct IGPUserContactsEditResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPUserContactsEditResponse"

  var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  mutating func clearIgpResponse() {_storage._igpResponse = nil}

  var igpPhone: Int64 {
    get {return _storage._igpPhone}
    set {_uniqueStorage()._igpPhone = newValue}
  }

  var igpFirstName: String {
    get {return _storage._igpFirstName}
    set {_uniqueStorage()._igpFirstName = newValue}
  }

  var igpLastName: String {
    get {return _storage._igpLastName}
    set {_uniqueStorage()._igpLastName = newValue}
  }

  var igpInitials: String {
    get {return _storage._igpInitials}
    set {_uniqueStorage()._igpInitials = newValue}
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpPhone)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpFirstName)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpLastName)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpInitials)
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
      if _storage._igpPhone != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpPhone, fieldNumber: 2)
      }
      if !_storage._igpFirstName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpFirstName, fieldNumber: 3)
      }
      if !_storage._igpLastName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpLastName, fieldNumber: 4)
      }
      if !_storage._igpInitials.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpInitials, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserContactsEdit: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_phone"),
    3: .standard(proto: "IGP_first_name"),
    4: .standard(proto: "IGP_last_name"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpPhone: Int64 = 0
    var _igpFirstName: String = String()
    var _igpLastName: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpPhone = source._igpPhone
      _igpFirstName = source._igpFirstName
      _igpLastName = source._igpLastName
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPUserContactsEdit) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpPhone != other_storage._igpPhone {return false}
        if _storage._igpFirstName != other_storage._igpFirstName {return false}
        if _storage._igpLastName != other_storage._igpLastName {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPUserContactsEditResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_phone"),
    3: .standard(proto: "IGP_first_name"),
    4: .standard(proto: "IGP_last_name"),
    5: .standard(proto: "IGP_initials"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpPhone: Int64 = 0
    var _igpFirstName: String = String()
    var _igpLastName: String = String()
    var _igpInitials: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpPhone = source._igpPhone
      _igpFirstName = source._igpFirstName
      _igpLastName = source._igpLastName
      _igpInitials = source._igpInitials
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPUserContactsEditResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpPhone != other_storage._igpPhone {return false}
        if _storage._igpFirstName != other_storage._igpFirstName {return false}
        if _storage._igpLastName != other_storage._igpLastName {return false}
        if _storage._igpInitials != other_storage._igpInitials {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
