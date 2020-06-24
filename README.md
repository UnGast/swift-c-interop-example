# Example of different configurations for calling C code from Swift

- tested on Ubuntu 19.10 with Swift 5 toolchain

- two Swift packages

- SwiftCInteropExample package contains examples for:
    - pure C targets (with external dependencies)
    - system library targets
    - writing wrappers for system libraries

- TestPackage calls functions from SwiftCInteropExample to demonstrate that the configuration works

- to run this you must compile library.c to a static library with the name liblibrary.a and library2.c to liblibrary2.a

- then provide the path to the libraries via -Xlinker flag: `swift build -Xlinker -L/path/to/this/directory` or `swift run -Xlinker -L/path/to/this/directory`