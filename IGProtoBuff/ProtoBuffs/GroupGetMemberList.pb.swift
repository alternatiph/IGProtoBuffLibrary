// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GroupGetMemberList.proto
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

struct IGPGroupGetMemberList: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPGroupGetMemberList"

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

  var igpFilterRole: IGPGroupGetMemberList.IGPFilterRole {
    get {return _storage._igpFilterRole}
    set {_uniqueStorage()._igpFilterRole = newValue}
  }

  var igpPagination: IGPPagination {
    get {return _storage._igpPagination ?? IGPPagination()}
    set {_uniqueStorage()._igpPagination = newValue}
  }
  /// Returns true if `igpPagination` has been explicitly set.
  var hasIgpPagination: Bool {return _storage._igpPagination != nil}
  /// Clears the value of `igpPagination`. Subsequent reads from it will return its default value.
  mutating func clearIgpPagination() {_storage._igpPagination = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum IGPFilterRole: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case all // = 0
    case member // = 1
    case moderator // = 2
    case admin // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .all
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .all
      case 1: self = .member
      case 2: self = .moderator
      case 3: self = .admin
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .all: return 0
      case .member: return 1
      case .moderator: return 2
      case .admin: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

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
        case 3: try decoder.decodeSingularEnumField(value: &_storage._igpFilterRole)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPagination)
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
      if _storage._igpFilterRole != .all {
        try visitor.visitSingularEnumField(value: _storage._igpFilterRole, fieldNumber: 3)
      }
      if let v = _storage._igpPagination {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct IGPGroupGetMemberListResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "IGPGroupGetMemberListResponse"

  var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  mutating func clearIgpResponse() {_storage._igpResponse = nil}

  var igpMember: [IGPGroupGetMemberListResponse.IGPMember] {
    get {return _storage._igpMember}
    set {_uniqueStorage()._igpMember = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct IGPMember: SwiftProtobuf.Message {
    static let protoMessageName: String = IGPGroupGetMemberListResponse.protoMessageName + ".IGPMember"

    var igpUserID: Int64 = 0

    var igpRole: IGPGroupRoom.IGPRole = .member

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &self.igpUserID)
        case 2: try decoder.decodeSingularEnumField(value: &self.igpRole)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.igpUserID != 0 {
        try visitor.visitSingularInt64Field(value: self.igpUserID, fieldNumber: 1)
      }
      if self.igpRole != .member {
        try visitor.visitSingularEnumField(value: self.igpRole, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

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
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpMember)
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
      if !_storage._igpMember.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpMember, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPGroupGetMemberList: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_filter_role"),
    4: .standard(proto: "IGP_pagination"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpFilterRole: IGPGroupGetMemberList.IGPFilterRole = .all
    var _igpPagination: IGPPagination? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpFilterRole = source._igpFilterRole
      _igpPagination = source._igpPagination
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPGroupGetMemberList) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpFilterRole != other_storage._igpFilterRole {return false}
        if _storage._igpPagination != other_storage._igpPagination {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPGroupGetMemberList.IGPFilterRole: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ALL"),
    1: .same(proto: "MEMBER"),
    2: .same(proto: "MODERATOR"),
    3: .same(proto: "ADMIN"),
  ]
}

extension IGPGroupGetMemberListResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_member"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpMember: [IGPGroupGetMemberListResponse.IGPMember] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpMember = source._igpMember
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: IGPGroupGetMemberListResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpMember != other_storage._igpMember {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPGroupGetMemberListResponse.IGPMember: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_userId"),
    2: .standard(proto: "IGP_role"),
  ]

  func _protobuf_generated_isEqualTo(other: IGPGroupGetMemberListResponse.IGPMember) -> Bool {
    if self.igpUserID != other.igpUserID {return false}
    if self.igpRole != other.igpRole {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}