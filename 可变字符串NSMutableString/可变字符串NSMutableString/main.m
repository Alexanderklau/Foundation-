//
//  main.m
//  可变字符串NSMutableString
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *book = @"IOS BOOK!";
        NSMutableString *str = [NSMutableString stringWithString:@"Hello"];
        [str appendString:@"IOS!"];
        NSLog(@"%@",str);
        [str appendFormat:@"%@ is a nice book!",book];
        NSLog(@"%@",str);
        [str insertString:@"FKIT.org" atIndex:6];
        NSLog(@"%@",str);
        [str deleteCharactersInRange:NSMakeRange(6, 12)];
        NSLog(@"%@",str);
        [str replaceCharactersInRange:NSMakeRange(6, 9) withString:@"Objective-c"];
        NSLog(@"%@",str);
    }
    return 0;
}
