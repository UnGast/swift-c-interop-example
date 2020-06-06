import CLibrary
import PureCTarget

public func swiftFunc1() -> Int32 {
    return testFunc1() + helloFromCTarget(Int32(2))
}