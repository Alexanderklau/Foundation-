//
//  main.m
//  对象复制copy与mutablecopy
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *book = [NSMutableString stringWithString:@"IOS BOOK！"];
        NSMutableString *bookCopy = [book mutableCopy];
        [bookCopy replaceCharactersInRange:NSMakeRange(2, 3)
                                withString:@"Android"];
        NSLog(@"book 的值为:%@",book);
        NSLog(@"bookcopy 的值为:%@",bookCopy);
        NSString *str = @"fkit";
        NSMutableString *strcopy = [str mutableCopy];
        [strcopy appendString:@".org"];
        NSLog(@"%@",strcopy);
        NSMutableString *bookcopy2 = [book copy];
        //[bookcopy2 appendString:@"aa"];//由于bookcopy2不可修改的，所以会出错
        
    }
    return 0;
}
