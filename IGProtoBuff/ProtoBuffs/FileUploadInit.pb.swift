// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FileUploadInit.proto
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

public struct IGPFileUploadInit: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPFileUploadInit"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpFirstBytes: Data {
    get {return _storage._igpFirstBytes}
    set {_uniqueStorage()._igpFirstBytes = newValue}
  }

  public var igpLastBytes: Data {
    get {return _storage._igpLastBytes}
    set {_uniqueStorage()._igpLastBytes = newValue}
  }

  public var igpSize: Int64 {
    get {return _storage._igpSize}
    set {_uniqueStorage()._igpSize = newValue}
  }

  public var igpFileHash: Data {
    get {return _storage._igpFileHash}
    set {_uniqueStorage()._igpFileHash = newValue}
  }

  public var igpFileName: String {
    get {return _storage._igpFileName}
    set {_uniqueStorage()._igpFileName = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._igpFirstBytes)
        case 3: try decoder.decodeSingularBytesField(value: &_storage._igpLastBytes)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._igpSize)
        case 5: try decoder.decodeSingularBytesField(value: &_storage._igpFileHash)
        case 6: try decoder.decodeSingularStringField(value: &_storage._igpFileName)
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
      if !_storage._igpFirstBytes.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._igpFirstBytes, fieldNumber: 2)
      }
      if !_storage._igpLastBytes.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._igpLastBytes, fieldNumber: 3)
      }
      if _storage._igpSize != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpSize, fieldNumber: 4)
      }
      if !_storage._igpFileHash.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._igpFileHash, fieldNumber: 5)
      }
      if !_storage._igpFileName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpFileName, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPFileUploadInitResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPFileUploadInitResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpToken: String {
    get {return _storage._igpToken}
    set {_uniqueStorage()._igpToken = newValue}
  }

  public var igpProgress: Double {
    get {return _storage._igpProgress}
    set {_uniqueStorage()._igpProgress = newValue}
  }

  public var igpOffset: Int64 {
    get {return _storage._igpOffset}
    set {_uniqueStorage()._igpOffset = newValue}
  }

  public var igpLimit: Int32 {
    get {return _storage._igpLimit}
    set {_uniqueStorage()._igpLimit = newValue}
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpToken)
        case 3: try decoder.decodeSingularDoubleField(value: &_storage._igpProgress)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._igpOffset)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._igpLimit)
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
      if !_storage._igpToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpToken, fieldNumber: 2)
      }
      if _storage._igpProgress != 0 {
        try visitor.visitSingularDoubleField(value: _storage._igpProgress, fieldNumber: 3)
      }
      if _storage._igpOffset != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpOffset, fieldNumber: 4)
      }
      if _storage._igpLimit != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpLimit, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPFileUploadInit: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_first_bytes"),
    3: .standard(proto: "IGP_last_bytes"),
    4: .standard(proto: "IGP_size"),
    5: .standard(proto: "IGP_file_hash"),
    6: .standard(proto: "IGP_file_name"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpFirstBytes: Data = SwiftProtobuf.Internal.emptyData
    var _igpLastBytes: Data = SwiftProtobuf.Internal.emptyData
    var _igpSize: Int64 = 0
    var _igpFileHash: Data = SwiftProtobuf.Internal.emptyData
    var _igpFileName: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpFirstBytes = source._igpFirstBytes
      _igpLastBytes = source._igpLastBytes
      _igpSize = source._igpSize
      _igpFileHash = source._igpFileHash
      _igpFileName = source._igpFileName
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPFileUploadInit) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpFirstBytes != other_storage._igpFirstBytes {return false}
        if _storage._igpLastBytes != other_storage._igpLastBytes {return false}
        if _storage._igpSize != other_storage._igpSize {return false}
        if _storage._igpFileHash != other_storage._igpFileHash {return false}
        if _storage._igpFileName != other_storage._igpFileName {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPFileUploadInitResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_token"),
    3: .standard(proto: "IGP_progress"),
    4: .standard(proto: "IGP_offset"),
    5: .standard(proto: "IGP_limit"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpToken: String = String()
    var _igpProgress: Double = 0
    var _igpOffset: Int64 = 0
    var _igpLimit: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpToken = source._igpToken
      _igpProgress = source._igpProgress
      _igpOffset = source._igpOffset
      _igpLimit = source._igpLimit
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPFileUploadInitResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpToken != other_storage._igpToken {return false}
        if _storage._igpProgress != other_storage._igpProgress {return false}
        if _storage._igpOffset != other_storage._igpOffset {return false}
        if _storage._igpLimit != other_storage._igpLimit {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
