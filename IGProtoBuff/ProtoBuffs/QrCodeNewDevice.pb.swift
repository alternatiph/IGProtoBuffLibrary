// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: QrCodeNewDevice.proto
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

public struct IGPQrCodeNewDevice: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPQrCodeNewDevice"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpAppName: String {
    get {return _storage._igpAppName}
    set {_uniqueStorage()._igpAppName = newValue}
  }

  public var igpAppID: Int32 {
    get {return _storage._igpAppID}
    set {_uniqueStorage()._igpAppID = newValue}
  }

  public var igpAppBuildVersion: Int32 {
    get {return _storage._igpAppBuildVersion}
    set {_uniqueStorage()._igpAppBuildVersion = newValue}
  }

  public var igpAppVersion: String {
    get {return _storage._igpAppVersion}
    set {_uniqueStorage()._igpAppVersion = newValue}
  }

  public var igpPlatform: IGPPlatform {
    get {return _storage._igpPlatform}
    set {_uniqueStorage()._igpPlatform = newValue}
  }

  public var igpPlatformVersion: String {
    get {return _storage._igpPlatformVersion}
    set {_uniqueStorage()._igpPlatformVersion = newValue}
  }

  public var igpDevice: IGPDevice {
    get {return _storage._igpDevice}
    set {_uniqueStorage()._igpDevice = newValue}
  }

  public var igpDeviceName: String {
    get {return _storage._igpDeviceName}
    set {_uniqueStorage()._igpDeviceName = newValue}
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpAppName)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpAppID)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpAppBuildVersion)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpAppVersion)
        case 6: try decoder.decodeSingularEnumField(value: &_storage._igpPlatform)
        case 7: try decoder.decodeSingularStringField(value: &_storage._igpPlatformVersion)
        case 8: try decoder.decodeSingularEnumField(value: &_storage._igpDevice)
        case 9: try decoder.decodeSingularStringField(value: &_storage._igpDeviceName)
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
      if !_storage._igpAppName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAppName, fieldNumber: 2)
      }
      if _storage._igpAppID != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpAppID, fieldNumber: 3)
      }
      if _storage._igpAppBuildVersion != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpAppBuildVersion, fieldNumber: 4)
      }
      if !_storage._igpAppVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAppVersion, fieldNumber: 5)
      }
      if _storage._igpPlatform != .unknownPlatform {
        try visitor.visitSingularEnumField(value: _storage._igpPlatform, fieldNumber: 6)
      }
      if !_storage._igpPlatformVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpPlatformVersion, fieldNumber: 7)
      }
      if _storage._igpDevice != .unknownDevice {
        try visitor.visitSingularEnumField(value: _storage._igpDevice, fieldNumber: 8)
      }
      if !_storage._igpDeviceName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpDeviceName, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPQrCodeNewDeviceResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = "IGPQrCodeNewDeviceResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpQrCodeImage: Data {
    get {return _storage._igpQrCodeImage}
    set {_uniqueStorage()._igpQrCodeImage = newValue}
  }

  public var igpExpireTime: Int32 {
    get {return _storage._igpExpireTime}
    set {_uniqueStorage()._igpExpireTime = newValue}
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
        case 2: try decoder.decodeSingularBytesField(value: &_storage._igpQrCodeImage)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpExpireTime)
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
      if !_storage._igpQrCodeImage.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._igpQrCodeImage, fieldNumber: 2)
      }
      if _storage._igpExpireTime != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpExpireTime, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPQrCodeNewDevice: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_app_name"),
    3: .standard(proto: "IGP_app_id"),
    4: .standard(proto: "IGP_app_build_version"),
    5: .standard(proto: "IGP_app_version"),
    6: .standard(proto: "IGP_platform"),
    7: .standard(proto: "IGP_platform_version"),
    8: .standard(proto: "IGP_device"),
    9: .standard(proto: "IGP_device_name"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpAppName: String = String()
    var _igpAppID: Int32 = 0
    var _igpAppBuildVersion: Int32 = 0
    var _igpAppVersion: String = String()
    var _igpPlatform: IGPPlatform = .unknownPlatform
    var _igpPlatformVersion: String = String()
    var _igpDevice: IGPDevice = .unknownDevice
    var _igpDeviceName: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpAppName = source._igpAppName
      _igpAppID = source._igpAppID
      _igpAppBuildVersion = source._igpAppBuildVersion
      _igpAppVersion = source._igpAppVersion
      _igpPlatform = source._igpPlatform
      _igpPlatformVersion = source._igpPlatformVersion
      _igpDevice = source._igpDevice
      _igpDeviceName = source._igpDeviceName
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPQrCodeNewDevice) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpAppName != other_storage._igpAppName {return false}
        if _storage._igpAppID != other_storage._igpAppID {return false}
        if _storage._igpAppBuildVersion != other_storage._igpAppBuildVersion {return false}
        if _storage._igpAppVersion != other_storage._igpAppVersion {return false}
        if _storage._igpPlatform != other_storage._igpPlatform {return false}
        if _storage._igpPlatformVersion != other_storage._igpPlatformVersion {return false}
        if _storage._igpDevice != other_storage._igpDevice {return false}
        if _storage._igpDeviceName != other_storage._igpDeviceName {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPQrCodeNewDeviceResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_qr_code_image"),
    3: .standard(proto: "IGP_expire_time"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpQrCodeImage: Data = SwiftProtobuf.Internal.emptyData
    var _igpExpireTime: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpQrCodeImage = source._igpQrCodeImage
      _igpExpireTime = source._igpExpireTime
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPQrCodeNewDeviceResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpQrCodeImage != other_storage._igpQrCodeImage {return false}
        if _storage._igpExpireTime != other_storage._igpExpireTime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
