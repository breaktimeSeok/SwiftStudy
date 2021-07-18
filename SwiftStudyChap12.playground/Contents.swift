import UIKit

// 접근제어 구현
open class OpenClass {
    open var openProperty: Int = 0
    public var pulbicproperty: Int = 0
    internal var internalProperty: Int = 0
    fileprivate var filePrivateProperty: Int = 0
    private var privateProperty: Int = 0
    
    open func openMethod() {}
    public func publicMethod() {}
    internal func internalMethod() {}
    fileprivate func fileprivateMethod() {}
    private func privateMethod() {}
}

public class PublicClass {}
public struct PublicStruct {}
public enum PublicEnum {}
public var publicVariable = 0
public let publicContant = 0
public func pulbicFunction() {}

internal class InternalClass {} // internal 키워드는 생략해도 무관하다.
internal struct InternalStruct {}
internal enum InternalEnum {}
internal var internalVariable = 0
internal let internalConstant = 0
internal func internalFunction() {}

fileprivate class FilePrivateClass {}
fileprivate struct FilePrivateStruct {}
fileprivate enum FilePricateEnum {}
fileprivate var filePrivateVariable = 0
fileprivate let filePrivateConstant = 0
fileprivate func filePricateFunction() {}

private class PrivateClass {}
private struct PrivateStruct {}
private enum PrivateEnum {}
private var privateVariable = 0
private let privateConstant = 0
private func privateFunction() {}
