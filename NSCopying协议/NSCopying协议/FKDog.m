//
//  FKDog.m
//  NSCopying协议
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "FKDog.h"

@implementation FKDog
@synthesize name;
@synthesize age;
-(id)copyWithZone:(NSZone*)zone
{
    NSLog(@"--执行 copyWithZone -- ");
    FKDog *dog = [[[self class]allocWithZone:zone]init];
    dog.name = self.name;
    dog.age = self.age;
    return dog;
}

@end
