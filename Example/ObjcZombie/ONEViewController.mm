//
//  ONEViewController.m
//  ObjcZombie
//
//  Created by tony0x59 on 06/16/2020.
//  Copyright (c) 2014 tony0x59. All rights reserved.
//

#import "ONEViewController.h"
#import <ObjcZombie/objc_zombie.h>

@interface ONEViewController ()

@end

@implementation ONEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    ObjcEvilDoers::ZombieEnable(true, 10 * 1024 * 1024);
    
    [self makeItCrash];
}

- (void)makeItCrash {
    static NSString *name;
    NSString *abc = @"fldjflkjsdlfjlsfjlsfj";
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    for (int i = 0; i < 10000; i++) {
        dispatch_async(queue, ^{
            name = [abc stringByAppendingPathExtension:@"fdfsdfsfdfs"];
        });
    }
    NSLog(@"abcd");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
