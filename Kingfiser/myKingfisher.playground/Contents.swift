import UIKit

var str = "Hello, playground"


public final class Kingfisher<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol KingfisherCompatible {
    associatedtype CompatibleType
    var kf: CompatibleType { get }
}

public extension KingfisherCompatible {
    var kf: Kingfisher<Self> {
        get { return Kingfisher(self)}
    }
}

extension UIImageView: KingfisherCompatible {}
let imageView = UIImageView()


/// `Resource` protocol defines how to download and cache a resource from network.
public protocol Resource {
    /// The key used in cache.
    var cacheKey: String { get }
    
    /// The target image URL.
    var downloadURL: URL { get }
}

extension URL: Resource {
    public var cacheKey: String { return absoluteString }
    public var downloadURL: URL { return self }
}

extension Kingfisher where Base: UIImageView {
    public func setImage(resource: Resource?) {
        print("设置图片")
    }
}


let url = URL(string: "1123")

// MARK: - Associated Object
private var lastURLKey: Void?

extension Kingfisher where Base: UIImageView {
    public var webURL: URL? {
        return objc_getAssociatedObject(base, &lastURLKey) as? URL
    }
    
    fileprivate func setWebURL(_ url: URL?) {
        objc_setAssociatedObject(base, &lastURLKey, url, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
}


//imageView.kf.setImage(resource: )
