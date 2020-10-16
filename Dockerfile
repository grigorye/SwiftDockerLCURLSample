FROM swiftlang/swift:nightly as builder
WORKDIR /root
COPY . .
RUN swift build -c release -Xswiftc -static-stdlib -Xlinker -lCoreFoundation -Xlinker -lCFURLSessionInterface \
    && ldd .build/release/SwiftDockerLCURLSample
