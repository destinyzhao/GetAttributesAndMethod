//
//  TestObject.h
//  GetAttributesAndMethod
//
//  Created by Destiny on 2018/8/31.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestObject : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *sex;

- (void)getIvars;

@end
