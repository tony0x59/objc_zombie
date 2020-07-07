//
//  ONEViewController.m
//  ObjcZombie
//
//  Created by tony0x59 on 06/16/2020.
//  Copyright (c) 2014 tony0x59. All rights reserved.
//

#import "ONEViewController.h"
#import <ObjcZombie/objc_zombie.h>
#import <objc/runtime.h>

@interface AObjc : NSObject
@end

@implementation AObjc
@end

@interface ONEViewController ()

@property (nonatomic, strong) NSString *bundleName;

@end

@implementation ONEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    ObjcEvilDoers::ZombieEnable(true, 10 * 1024 * 1024);
    
    [self getAllMethodsByClass:NSClassFromString(@"__NSCFString")];
    [[NSString stringWithFormat:@"fdslkfjdlsfjlksfjdfjs"] length];
    
    [self makeItCrash];
}

- (NSArray *)getAllMethodsByClass:(Class)cls {
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(cls, &methodCount);
    NSMutableArray *methodArray = [NSMutableArray arrayWithCapacity:methodCount];
    for (int i = 0; i < methodCount; i++) {
        Method temp = methodList[i];
        SEL name_F = method_getName(temp);
        const char *name_s = sel_getName(name_F);
        int arguments = method_getNumberOfArguments(temp);
        const char * encoding = method_getTypeEncoding(temp);
        NSLog(@"MethodName: %@,ArgumentCount: %d,EncodingStyle: %@",[NSString stringWithUTF8String:name_s],arguments,[NSString stringWithUTF8String:encoding]);
        [methodArray addObject:[NSString stringWithUTF8String:name_s]];
    }
    free(methodList);
    return methodArray;
}

- (void)makeItCrash {
    static id name;
    self.bundleName = @"dsf.kdsjflkdjsfljfljsf";
    NSString *abc = @"fldjflkjsdlfjlsfjlsfj";
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    for (int i = 0; i < 10000; i++) {
        dispatch_async(queue, ^{
//            name = [abc stringByAppendingPathComponent:self.bundleName]; // ok，无法从堆栈定位
            name = [NSString stringWithFormat:@"fldjslfjsljfs %@", @1];
            
            NSString *abc2 = name;
            NSLog(@"%@", abc2);
//            name = [abc stringByAppendingFormat:@"dfldskfjldsjfljdsf"]; // fail!!，有概率从堆栈直接定位
//            name = [[AObjc alloc] init];   // ok，可从堆栈直接定位
//            name = [NSURL URLWithString:@"http://www.baidu.com"]; // fail!! 可从堆栈直接定位
//            name = [NSDate dateWithTimeIntervalSince1970:5439548759379573]; // ok，可从堆栈直接定位
//            name = [NSString stringWithUTF8String:"sdljflsjflfsdsfdsffsff"]; // fail, 可从堆栈直接定位
        });
    }
    
    NSLog(@"done, again ...");
    [self performSelector:@selector(makeItCrash) withObject:nil afterDelay:1.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
