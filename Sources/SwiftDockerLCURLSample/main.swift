#if os(Linux)
import FoundationNetworking
#else
import Foundation
#endif

let x = URLSession(configuration: .default)
print(x)
print("Hello, world!")
