# objc_zombie
zombie object debugging tool from Chromium sourcecode

Example(Xcode console output):

```
Zombie <NSPathStore2: 0x60000152e520> received -deallocBacktrace from -dealloc:
0   ObjcZombie_Example                  0x00000001039bf172 _ZN12_GLOBAL__N_113ZombieDeallocEP11objc_objectP13objc_selector + 370
1   libobjc.A.dylib                     0x00007fff50bbea16 _ZN11objc_object17sidetable_releaseEb + 174
2   ObjcZombie_Example                  0x00000001039be690 __32-[ONEViewController makeItCrash]_block_invoke + 80
3   libdispatch.dylib                   0x0000000103c2ff11 _dispatch_call_block_and_release + 12
4   libdispatch.dylib                   0x0000000103c30e8e _dispatch_client_callout + 8
5   libdispatch.dylib                   0x0000000103c332d8 _dispatch_queue_override_invoke + 1022
6   libdispatch.dylib                   0x0000000103c42399 _dispatch_root_queue_drain + 351
7   libdispatch.dylib                   0x0000000103c42ca6 _dispatch_worker_thread2 + 135
8   libsystem_pthread.dylib             0x00007fff51c089f7 _pthread_wqthread + 220
9   libsystem_pthread.dylib             0x00007fff51c07b77 start_wqthread + 15
(lldb) 
```