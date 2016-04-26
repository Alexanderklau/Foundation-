//
//  main.m
//  Nsstring常用功能
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"hello!\n";
        NSString *book = @"need helps!\n";
        str = [str stringByAppendingString:@",IOS!"];
        NSLog(@"%@",str);
        const char *cstr = [str UTF8String];
        NSLog(@"获取的C字符串： ％s",cstr);
        str = [str stringByAppendingFormat:@"%@ 是很不错的",book];
        NSLog(@"%@",str);
        NSLog(@"str的字符个数为: %1u",[str length]);
        NSString *s1 = [str substringToIndex:10];
        NSLog(@"%@",s1);
        NSString *s2 = [str substringFromIndex:5];
        NSLog(@"%@",s2);
        NSString *s3 = [str substringWithRange:NSMakeRange(5, 15)];
        NSLog(@"%@",s3);
        NSRange pos = [str rangeOfString:@"IOS"];
        NSLog(@"IOS 在 str中出现的位置:%1d,长度为:%1d",pos.location,pos.length);
        str = [str uppercaseString];
        NSLog(@"%@",str);
        
        
        
        
        
        
        
    }
    return 0;
}
