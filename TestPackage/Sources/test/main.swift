import CLibrary
import Library 
import PureCTarget
import PureCTarget2

print("From CLibrary", testFunc1()) 
print("Swift wrapper library function", swiftFunc1()) 
print("Pure C files containing target", helloFromCTarget(Int32(2)))

// get a char array of dynamic length from C and convert it to a Swift String
var chars: UnsafeMutablePointer<CChar>?
var numChars = Int(helloFromCTarget2(&chars))
print("Get C char array, character count:", numChars)
var realString = ""
for i in 0..<numChars {
    realString.append(Character(Unicode.Scalar(UInt8(bitPattern: chars!.advanced(by: i).pointee))))
}
print(realString)
print("C target with linked library", cTarget2UsingLibrary2())

struct test {
    var text = "Hello, World!"
}
