// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserRegister.proto
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

public struct IGPUserRegister: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPUserRegister"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpPhoneNumber: Int64 {
    get {return _storage._igpPhoneNumber}
    set {_uniqueStorage()._igpPhoneNumber = newValue}
  }

  public var igpCountryCode: String {
    get {return _storage._igpCountryCode}
    set {_uniqueStorage()._igpCountryCode = newValue}
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpPhoneNumber)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpCountryCode)
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
      if _storage._igpPhoneNumber != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpPhoneNumber, fieldNumber: 2)
      }
      if !_storage._igpCountryCode.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpCountryCode, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPUserRegisterResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPUserRegisterResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpUsername: String {
    get {return _storage._igpUsername}
    set {_uniqueStorage()._igpUsername = newValue}
  }

  public var igpUserID: Int64 {
    get {return _storage._igpUserID}
    set {_uniqueStorage()._igpUserID = newValue}
  }

  public var igpAuthorHash: String {
    get {return _storage._igpAuthorHash}
    set {_uniqueStorage()._igpAuthorHash = newValue}
  }

  public var igpMethod: IGPUserRegisterResponse.IGPMethod {
    get {return _storage._igpMethod}
    set {_uniqueStorage()._igpMethod = newValue}
  }

  public var igpResendDelay: Int32 {
    get {return _storage._igpResendDelay}
    set {_uniqueStorage()._igpResendDelay = newValue}
  }

  public var igpSmsNumber: [Int64] {
    get {return _storage._igpSmsNumber}
    set {_uniqueStorage()._igpSmsNumber = newValue}
  }

  public var igpVerifyCodeRegex: String {
    get {return _storage._igpVerifyCodeRegex}
    set {_uniqueStorage()._igpVerifyCodeRegex = newValue}
  }

  public var igpVerifyCodeDigitCount: Int32 {
    get {return _storage._igpVerifyCodeDigitCount}
    set {_uniqueStorage()._igpVerifyCodeDigitCount = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPMethod: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case verifyCodeSms // = 0
    case verifyCodeSocket // = 1
    case verifyCodeSmsSocket // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .verifyCodeSms
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .verifyCodeSms
      case 1: self = .verifyCodeSocket
      case 2: self = .verifyCodeSmsSocket
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .verifyCodeSms: return 0
      case .verifyCodeSocket: return 1
      case .verifyCodeSmsSocket: return 2
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpUsername)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpUserID)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpAuthorHash)
        case 5: try decoder.decodeSingularEnumField(value: &_storage._igpMethod)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._igpResendDelay)
        case 7: try decoder.decodeRepeatedInt64Field(value: &_storage._igpSmsNumber)
        case 8: try decoder.decodeSingularStringField(value: &_storage._igpVerifyCodeRegex)
        case 9: try decoder.decodeSingularInt32Field(value: &_storage._igpVerifyCodeDigitCount)
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
      if !_storage._igpUsername.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpUsername, fieldNumber: 2)
      }
      if _storage._igpUserID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpUserID, fieldNumber: 3)
      }
      if !_storage._igpAuthorHash.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAuthorHash, fieldNumber: 4)
      }
      if _storage._igpMethod != .verifyCodeSms {
        try visitor.visitSingularEnumField(value: _storage._igpMethod, fieldNumber: 5)
      }
      if _storage._igpResendDelay != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpResendDelay, fieldNumber: 6)
      }
      if !_storage._igpSmsNumber.isEmpty {
        try visitor.visitPackedInt64Field(value: _storage._igpSmsNumber, fieldNumber: 7)
      }
      if !_storage._igpVerifyCodeRegex.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpVerifyCodeRegex, fieldNumber: 8)
      }
      if _storage._igpVerifyCodeDigitCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpVerifyCodeDigitCount, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserRegister: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_phone_number"),
    3: .standard(proto: "IGP_country_code"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpPhoneNumber: Int64 = 0
    var _igpCountryCode: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpPhoneNumber = source._igpPhoneNumber
      _igpCountryCode = source._igpCountryCode
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserRegister) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpPhoneNumber != other_storage._igpPhoneNumber {return false}
        if _storage._igpCountryCode != other_storage._igpCountryCode {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPUserRegisterResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_username"),
    3: .standard(proto: "IGP_user_id"),
    4: .standard(proto: "IGP_author_hash"),
    5: .standard(proto: "IGP_method"),
    6: .standard(proto: "IGP_resend_delay"),
    7: .standard(proto: "IGP_sms_number"),
    8: .standard(proto: "IGP_verify_code_regex"),
    9: .standard(proto: "IGP_verify_code_digit_count"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpUsername: String = String()
    var _igpUserID: Int64 = 0
    var _igpAuthorHash: String = String()
    var _igpMethod: IGPUserRegisterResponse.IGPMethod = .verifyCodeSms
    var _igpResendDelay: Int32 = 0
    var _igpSmsNumber: [Int64] = []
    var _igpVerifyCodeRegex: String = String()
    var _igpVerifyCodeDigitCount: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpUsername = source._igpUsername
      _igpUserID = source._igpUserID
      _igpAuthorHash = source._igpAuthorHash
      _igpMethod = source._igpMethod
      _igpResendDelay = source._igpResendDelay
      _igpSmsNumber = source._igpSmsNumber
      _igpVerifyCodeRegex = source._igpVerifyCodeRegex
      _igpVerifyCodeDigitCount = source._igpVerifyCodeDigitCount
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserRegisterResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpUsername != other_storage._igpUsername {return false}
        if _storage._igpUserID != other_storage._igpUserID {return false}
        if _storage._igpAuthorHash != other_storage._igpAuthorHash {return false}
        if _storage._igpMethod != other_storage._igpMethod {return false}
        if _storage._igpResendDelay != other_storage._igpResendDelay {return false}
        if _storage._igpSmsNumber != other_storage._igpSmsNumber {return false}
        if _storage._igpVerifyCodeRegex != other_storage._igpVerifyCodeRegex {return false}
        if _storage._igpVerifyCodeDigitCount != other_storage._igpVerifyCodeDigitCount {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPUserRegisterResponse.IGPMethod: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VERIFY_CODE_SMS"),
    1: .same(proto: "VERIFY_CODE_SOCKET"),
    2: .same(proto: "VERIFY_CODE_SMS_SOCKET"),
  ]
}
