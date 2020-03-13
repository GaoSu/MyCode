import UIKit

public enum KingfisherOptionsInfoItem {
    case targetCache
    case originalCache
    var duration: TimeInterval {
        return 0
    }
}


public extension Collection where Iterator.Element == KingfisherOptionsInfoItem {
    public var targetCacheString: String {
        return "targetCache"
    }
}

public typealias KingfisherOptionsInfo = [KingfisherOptionsInfoItem]
public typealias KingfisherOptionsInfoTwo = KingfisherOptionsInfoItem

func text(option: KingfisherOptionsInfo? = nil) {
    option?.targetCacheString
}
//KingfisherOptionsInfo.targetCache
//KingfisherOptionsInfo.originalCache

KingfisherOptionsInfoItem.originalCache.duration

KingfisherOptionsInfoTwo.originalCache
KingfisherOptionsInfoTwo.targetCache

//public struct MyClass {
//    let name: String = "MyClass"
//}
//
//public typealias MyClassInfo = [MyClass]
//
//
//let myClassIn = [MyClassInfo]()


public enum MyType {
    case one
    case two
}

public typealias MyTypeInfo = [MyType]
public typealias MyTypeInfoTwo = MyType


MyTypeInfoTwo.one

//MyTypeInfo.


let arr = [KingfisherOptionsInfoItem]()


func cleanExpiredDiskCache(completion handler: (() -> Void)? = nil) {
    print("cleanfunc")
}


func test() {
    print("test")
    cleanExpiredDiskCache {
        
    }
    
}

text()
