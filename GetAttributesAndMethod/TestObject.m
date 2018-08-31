//
//  TestObject.m
//  GetAttributesAndMethod
//
//  Created by Destiny on 2018/8/31.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "TestObject.h"
#import <objc/runtime.h>

@interface TestObject()

@property (copy, nonatomic) NSString *privateName;
@property (copy, nonatomic) NSString *privateSex;

@end

@implementation TestObject

- (void)getIvars
{
    unsigned int count = 0;
    // 拷贝出所胡的成员变量列表
    Ivar *ivars = class_copyIvarList([self class], &count);
    
    for (int i = 0; i<count; i++) {
        // 取出成员变量
        Ivar ivar = ivars[i];
        // 打印成员变量名字
        NSLog(@"%s---", ivar_getName(ivar));
        // 打印成员变量的数据类型
        NSLog(@"%s---", ivar_getTypeEncoding(ivar));
        NSLog(@"---------------------------------------");
    }
    // 释放
    free(ivars);
}

@end
