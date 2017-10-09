// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ClientSearchRoomHistory.proto
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

public struct IGPClientSearchRoomHistory: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPClientSearchRoomHistory"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  ///Deprecated
  public var igpOffset: Int32 {
    get {return _storage._igpOffset}
    set {_uniqueStorage()._igpOffset = newValue}
  }

  public var igpFilter: IGPClientSearchRoomHistory.IGPFilter {
    get {return _storage._igpFilter}
    set {_uniqueStorage()._igpFilter = newValue}
  }

  public var igpOffsetMessageID: Int64 {
    get {return _storage._igpOffsetMessageID}
    set {_uniqueStorage()._igpOffsetMessageID = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPFilter: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case image // = 0
    case video // = 1
    case audio // = 2
    case voice // = 3
    case gif // = 4
    case file // = 5
    case url // = 6
    case UNRECOGNIZED(Int)

    public init() {
      self = .image
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .image
      case 1: self = .video
      case 2: self = .audio
      case 3: self = .voice
      case 4: self = .gif
      case 5: self = .file
      case 6: self = .url
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .image: return 0
      case .video: return 1
      case .audio: return 2
      case .voice: return 3
      case .gif: return 4
      case .file: return 5
      case .url: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpOffset)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._igpFilter)
        case 5: try decoder.decodeSingularInt64Field(value: &_storage._igpOffsetMessageID)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpOffset != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpOffset, fieldNumber: 3)
      }
      if _storage._igpFilter != .image {
        try visitor.visitSingularEnumField(value: _storage._igpFilter, fieldNumber: 4)
      }
      if _storage._igpOffsetMessageID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpOffsetMessageID, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPClientSearchRoomHistoryResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPClientSearchRoomHistoryResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpTotalCount: Int32 {
    get {return _storage._igpTotalCount}
    set {_uniqueStorage()._igpTotalCount = newValue}
  }

  public var igpNotDeletedCount: Int32 {
    get {return _storage._igpNotDeletedCount}
    set {_uniqueStorage()._igpNotDeletedCount = newValue}
  }

  public var igpResult: [IGPRoomMessage] {
    get {return _storage._igpResult}
    set {_uniqueStorage()._igpResult = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._igpTotalCount)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpNotDeletedCount)
        case 4: try decoder.decodeRepeatedMessageField(value: &_storage._igpResult)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpTotalCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpTotalCount, fieldNumber: 2)
      }
      if _storage._igpNotDeletedCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpNotDeletedCount, fieldNumber: 3)
      }
      if !_storage._igpResult.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpResult, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPClientSearchRoomHistory: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_offset"),
    4: .standard(proto: "IGP_filter"),
    5: .standard(proto: "IGP_offset_message_id"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpOffset: Int32 = 0
    var _igpFilter: IGPClientSearchRoomHistory.IGPFilter = .image
    var _igpOffsetMessageID: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpOffset = source._igpOffset
      _igpFilter = source._igpFilter
      _igpOffsetMessageID = source._igpOffsetMessageID
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPClientSearchRoomHistory) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpOffset != other_storage._igpOffset {return false}
        if _storage._igpFilter != other_storage._igpFilter {return false}
        if _storage._igpOffsetMessageID != other_storage._igpOffsetMessageID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPClientSearchRoomHistory.IGPFilter: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IMAGE"),
    1: .same(proto: "VIDEO"),
    2: .same(proto: "AUDIO"),
    3: .same(proto: "VOICE"),
    4: .same(proto: "GIF"),
    5: .same(proto: "FILE"),
    6: .same(proto: "URL"),
  ]
}

extension IGPClientSearchRoomHistoryResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_totalCount"),
    3: .standard(proto: "IGP_notDeletedCount"),
    4: .standard(proto: "IGP_result"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpTotalCount: Int32 = 0
    var _igpNotDeletedCount: Int32 = 0
    var _igpResult: [IGPRoomMessage] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpTotalCount = source._igpTotalCount
      _igpNotDeletedCount = source._igpNotDeletedCount
      _igpResult = source._igpResult
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPClientSearchRoomHistoryResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpTotalCount != other_storage._igpTotalCount {return false}
        if _storage._igpNotDeletedCount != other_storage._igpNotDeletedCount {return false}
        if _storage._igpResult != other_storage._igpResult {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
