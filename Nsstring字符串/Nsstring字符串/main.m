//
//  main.m
//  Nsstring字符串
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unichar data[6] = {97,98,99,100,101,102} ;
        NSString *str = [[NSString alloc]initWithCharacters:data length:6];
        NSLog(@"%@",str);
        char *cstr = "Hello,world!";
        NSString *str2 = [NSString stringWithUTF8String:cstr];
        NSLog(@"%@",str2);
        [str2 writeToFile:@"myfile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSString *str3 = [NSString stringWithContentsOfFile:@"NSStringTest.m" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",str3);
    }
    return 0;
}
