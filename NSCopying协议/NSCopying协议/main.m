//
//  main.m
//  NSCopying协议
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog *dog1 = [FKDog new];
        dog1.name = [NSMutableString stringWithString:@"旺财"];
        dog1.age = 20;
        FKDog *dog2 = [dog1 copy];
        dog2.name = [NSMutableString stringWithString:@"snoopy"];
        dog2.age = 12;
        NSLog(@"dog1 的名字为 %@",dog1.name);
        NSLog(@"dog1 的年龄为 %d",dog1.age);
        NSLog(@"dog2 的名字为 %@",dog2.name);
        NSLog(@"dog2 的名字为 %d",dog2.age);
        
        
    }
    return 0;
}
