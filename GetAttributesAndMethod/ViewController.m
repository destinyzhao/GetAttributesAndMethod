//
//  ViewController.m
//  GetAttributesAndMethod
//
//  Created by Destiny on 2018/8/31.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "ViewController.h"
#import "TestObject.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestObject *obj = [TestObject new];
    [obj getIvars];
    
    [obj setValue:@"123" forKey:@"privateName"];
    NSLog(@"privateName:%@", [obj valueForKey:@"privateName"]);
    
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([TestObject class], &count);
    //对私有变量的更改
    Ivar privateNameIvar = ivars[2];
    object_setIvar(obj, privateNameIvar, @"456");
    NSString *privateName = object_getIvar(obj, privateNameIvar);
    NSLog(@"privateName : %@",privateName);


    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
