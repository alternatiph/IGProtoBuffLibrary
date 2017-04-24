/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "UserTwoStepVerificationRequestRecoveryToken.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserTwoStepVerificationRequestRecoveryTokenRoot {
    public static let `default` = UserTwoStepVerificationRequestRecoveryTokenRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        RequestRoot.default.registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPUserTwoStepVerificationRequestRecoveryToken : GeneratedMessage {

    public static func == (lhs: IGPUserTwoStepVerificationRequestRecoveryToken, rhs: IGPUserTwoStepVerificationRequestRecoveryToken) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpRequest {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpRequest)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpRequest {
            if let varSizeigpRequest = igpRequest?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpRequest
            }
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
        return IGPUserTwoStepVerificationRequestRecoveryToken.classBuilder() as! IGPUserTwoStepVerificationRequestRecoveryToken.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRequestRecoveryToken.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRequestRecoveryToken.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRequestRecoveryToken.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRequestRecoveryToken) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpRequest {
            output += "\(indent) igpRequest {\n"
            if let outDescIgpRequest = igpRequest {
                output += try outDescIgpRequest.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpRequest {
                if let hashValueigpRequest = igpRequest?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpRequest
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationRequestRecoveryToken"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRequestRecoveryToken"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRequestRecoveryToken = IGPUserTwoStepVerificationRequestRecoveryToken()
        public func getMessage() -> IGPUserTwoStepVerificationRequestRecoveryToken {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpRequest:IGPRequest! {
            get {
                if igpRequestBuilder_ != nil {
                    builderResult.igpRequest = igpRequestBuilder_.getMessage()
                }
                return builderResult.igpRequest
            }
            set (value) {
                builderResult.hasIgpRequest = true
                builderResult.igpRequest = value
            }
        }
        public var hasIgpRequest:Bool {
            get {
                return builderResult.hasIgpRequest
            }
        }
        fileprivate var igpRequestBuilder_:IGPRequest.Builder! {
            didSet {
                builderResult.hasIgpRequest = true
            }
        }
        public func getIgpRequestBuilder() -> IGPRequest.Builder {
            if igpRequestBuilder_ == nil {
                igpRequestBuilder_ = IGPRequest.Builder()
                builderResult.igpRequest = igpRequestBuilder_.getMessage()
                if igpRequest != nil {
                    try! igpRequestBuilder_.mergeFrom(other: igpRequest)
                }
            }
            return igpRequestBuilder_
        }
        @discardableResult
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            builderResult = IGPUserTwoStepVerificationRequestRecoveryToken()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            return try IGPUserTwoStepVerificationRequestRecoveryToken.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRequestRecoveryToken {
            let returnMe:IGPUserTwoStepVerificationRequestRecoveryToken = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRequestRecoveryToken) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            if other == IGPUserTwoStepVerificationRequestRecoveryToken() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPRequest.Builder = IGPRequest.Builder()
                    if hasIgpRequest {
                        try subBuilder.mergeFrom(other: igpRequest)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpRequest = subBuilder.buildPartial()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRequestRecoveryToken.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRequestRecoveryToken.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserTwoStepVerificationRequestRecoveryTokenResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPUserTwoStepVerificationRequestRecoveryTokenResponse, rhs: IGPUserTwoStepVerificationRequestRecoveryTokenResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpEmailPattern == rhs.hasIgpEmailPattern) && (!lhs.hasIgpEmailPattern || lhs.igpEmailPattern == rhs.igpEmailPattern)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpEmailPattern:String = ""
    public fileprivate(set) var hasIgpEmailPattern:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpResponse {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpResponse)
        }
        if hasIgpEmailPattern {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpEmailPattern)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpResponse {
            if let varSizeigpResponse = igpResponse?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpResponse
            }
        }
        if hasIgpEmailPattern {
            serialize_size += igpEmailPattern.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
        return IGPUserTwoStepVerificationRequestRecoveryTokenResponse.classBuilder() as! IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRequestRecoveryTokenResponse) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpEmailPattern {
            jsonMap["IGPEmailPattern"] = igpEmailPattern
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpResponse {
            output += "\(indent) igpResponse {\n"
            if let outDescIgpResponse = igpResponse {
                output += try outDescIgpResponse.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        if hasIgpEmailPattern {
            output += "\(indent) igpEmailPattern: \(igpEmailPattern) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpResponse {
                if let hashValueigpResponse = igpResponse?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpResponse
                }
            }
            if hasIgpEmailPattern {
                hashCode = (hashCode &* 31) &+ igpEmailPattern.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationRequestRecoveryTokenResponse"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRequestRecoveryTokenResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRequestRecoveryTokenResponse = IGPUserTwoStepVerificationRequestRecoveryTokenResponse()
        public func getMessage() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpResponse:IGPResponse! {
            get {
                if igpResponseBuilder_ != nil {
                    builderResult.igpResponse = igpResponseBuilder_.getMessage()
                }
                return builderResult.igpResponse
            }
            set (value) {
                builderResult.hasIgpResponse = true
                builderResult.igpResponse = value
            }
        }
        public var hasIgpResponse:Bool {
            get {
                return builderResult.hasIgpResponse
            }
        }
        fileprivate var igpResponseBuilder_:IGPResponse.Builder! {
            didSet {
                builderResult.hasIgpResponse = true
            }
        }
        public func getIgpResponseBuilder() -> IGPResponse.Builder {
            if igpResponseBuilder_ == nil {
                igpResponseBuilder_ = IGPResponse.Builder()
                builderResult.igpResponse = igpResponseBuilder_.getMessage()
                if igpResponse != nil {
                    try! igpResponseBuilder_.mergeFrom(other: igpResponse)
                }
            }
            return igpResponseBuilder_
        }
        @discardableResult
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpEmailPattern:String {
            get {
                return builderResult.igpEmailPattern
            }
            set (value) {
                builderResult.hasIgpEmailPattern = true
                builderResult.igpEmailPattern = value
            }
        }
        public var hasIgpEmailPattern:Bool {
            get {
                return builderResult.hasIgpEmailPattern
            }
        }
        @discardableResult
        public func setIgpEmailPattern(_ value:String) -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            self.igpEmailPattern = value
            return self
        }
        @discardableResult
        public func clearIgpEmailPattern() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder{
            builderResult.hasIgpEmailPattern = false
            builderResult.igpEmailPattern = ""
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            builderResult = IGPUserTwoStepVerificationRequestRecoveryTokenResponse()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
            let returnMe:IGPUserTwoStepVerificationRequestRecoveryTokenResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRequestRecoveryTokenResponse) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            if other == IGPUserTwoStepVerificationRequestRecoveryTokenResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpEmailPattern {
                igpEmailPattern = other.igpEmailPattern
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPResponse.Builder = IGPResponse.Builder()
                    if hasIgpResponse {
                        try subBuilder.mergeFrom(other: igpResponse)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpResponse = subBuilder.buildPartial()

                case 18:
                    igpEmailPattern = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpEmailPattern = jsonMap["IGPEmailPattern"] as? String {
                resultDecodedBuilder.igpEmailPattern = jsonValueIgpEmailPattern
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserTwoStepVerificationRequestRecoveryToken: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRequestRecoveryToken> {
        var mergedArray = Array<IGPUserTwoStepVerificationRequestRecoveryToken>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryToken? {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRequestRecoveryTokenRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryToken {
        return try IGPUserTwoStepVerificationRequestRecoveryToken.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRequestRecoveryToken.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpRequest":
                guard let newSubscriptValue = newSubscriptValue as? IGPRequest else {
                    return
                }
                self.igpRequest = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserTwoStepVerificationRequestRecoveryTokenResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRequestRecoveryTokenResponse> {
        var mergedArray = Array<IGPUserTwoStepVerificationRequestRecoveryTokenResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse? {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRequestRecoveryTokenRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRequestRecoveryTokenResponse {
        return try IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpEmailPattern": return self.igpEmailPattern
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRequestRecoveryTokenResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpEmailPattern": return self.igpEmailPattern
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpResponse":
                guard let newSubscriptValue = newSubscriptValue as? IGPResponse else {
                    return
                }
                self.igpResponse = newSubscriptValue
            case "igpEmailPattern":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpEmailPattern = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)