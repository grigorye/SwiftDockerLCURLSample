# SwiftDockerLCURLSample

To reproduce the problem, clone the repo and do `docker build .`.

```
$ docker build .
Sending build context to Docker daemon  199.3MB
Step 1/4 : FROM swiftlang/swift:nightly as builder
 ---> fd130a50695f
Step 2/4 : WORKDIR /root
 ---> Using cache
 ---> d67c89c35784
Step 3/4 : COPY . .
 ---> e47e6839c5f6
Step 4/4 : RUN swift build -c release -Xswiftc -static-stdlib -Xlinker -lCoreFoundation -Xlinker -lCFURLSessionInterface     && ldd .build/release/SwiftDockerLCURLSample
 ---> Running in 3f711c218957
[1/2] Compiling SwiftDockerLCURLSample main.swift
/usr/bin/ld.gold: error: cannot find -lcurl
/usr/lib/swift_static/linux/libFoundation.a(NSPathUtilities.swift.o):NSPathUtilities.swift.o:function $s10Foundation22_NSCreateTemporaryFileys5Int32V_SStSSKF: warning: the use of `mktemp' is dangerous, better use `mkstemp' or `mkdtemp'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionEasyCodeDescription: error: undefined reference to 'curl_easy_strerror'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionEasyHandleInit: error: undefined reference to 'curl_easy_init'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionEasyHandleDeinit: error: undefined reference to 'curl_easy_cleanup'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionEasyHandleSetPauseState: error: undefined reference to 'curl_easy_pause'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleInit: error: undefined reference to 'curl_multi_init'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleDeinit: error: undefined reference to 'curl_multi_cleanup'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleAddHandle: error: undefined reference to 'curl_multi_add_handle'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleRemoveHandle: error: undefined reference to 'curl_multi_remove_handle'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleAssign: error: undefined reference to 'curl_multi_assign'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleAction: error: undefined reference to 'curl_multi_socket_action'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionMultiHandleInfoRead: error: undefined reference to 'curl_multi_info_read'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_setopt_ptr: error: undefined reference to 'curl_easy_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_setopt_int: error: undefined reference to 'curl_easy_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_setopt_long: error: undefined reference to 'curl_easy_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_setopt_int64: error: undefined reference to 'curl_easy_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_getinfo_long: error: undefined reference to 'curl_easy_getinfo'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_getinfo_double: error: undefined reference to 'curl_easy_getinfo'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_easy_getinfo_charp: error: undefined reference to 'curl_easy_getinfo'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_multi_setopt_ptr: error: undefined reference to 'curl_multi_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_multi_setopt_l: error: undefined reference to 'curl_multi_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_multi_setopt_sf: error: undefined reference to 'curl_multi_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSession_multi_setopt_tf: error: undefined reference to 'curl_multi_setopt'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionInit: error: undefined reference to 'curl_global_init'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionCurlVersionString: error: undefined reference to 'curl_version'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionCurlVersionInfo: error: undefined reference to 'curl_version_info'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionSListAppend: error: undefined reference to 'curl_slist_append'
/usr/lib/swift_static/linux/libCFURLSessionInterface.a(CFURLSessionInterface.c.o):CFURLSessionInterface.c:function CFURLSessionSListFreeAll: error: undefined reference to 'curl_slist_free_all'
clang-10: error: linker command failed with exit code 1 (use -v to see invocation)
<unknown>:0: error: link command failed with exit code 1 (use -v to see invocation)
[1/2] Linking SwiftDockerLCURLSample
The command '/bin/sh -c swift build -c release -Xswiftc -static-stdlib -Xlinker -lCoreFoundation -Xlinker -lCFURLSessionInterface     && ldd .build/release/SwiftDockerLCURLSample' returned a non-zero code: 1
```