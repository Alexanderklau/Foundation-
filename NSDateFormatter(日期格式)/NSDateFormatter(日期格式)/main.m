//
//  main.m
//  NSDateFormatter(日期格式)
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *dt = [NSDate dateWithTimeIntervalSince1970:3600 * 24 *366 *20];
        NSLocale *locales[] = {
            [[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"],[[NSLocale alloc]initWithLocaleIdentifier:@"en_US"]};
            NSDateFormatter *df[8];
            for (int i = 0; i<2; i++) {
                df[i * 4]= [[NSDateFormatter alloc]init];
                [df[i * 4] setDateStyle:NSDateFormatterShortStyle];
                [df[i * 4] setTimeStyle:NSDateFormatterShortStyle];
                [df[i * 4] setLocale:locales[i]];
                df[i * 4 + 1]= [[NSDateIntervalFormatter alloc]init];
                [df[i * 4 + 1] setDateStyle:NSDateIntervalFormatterMediumStyle];
                [df[i * 4 + 1] setDateStyle:NSDateIntervalFormatterMediumStyle];
                [df[i * 4 + 1] setLocale:locales[i]];
                df[i * 4 + 2] = [[NSDateFormatter alloc]init];
                [df[i * 4 + 2] setDateStyle:NSDateIntervalFormatterLongStyle];
                [df[i * 4 + 2] setTimeStyle:NSDateIntervalFormatterLongStyle];
                [df[i * 4 + 2] setLocale:locales[i]];
                df[i * 4 + 3] = [[NSDateFormatter alloc]init];
                [df[i * 4 + 3] setDateStyle:NSDateFormatterFullStyle];
                [df[i * 4 + 3] setTimeStyle:NSDateFormatterLongStyle];
                [df[i * 4 + 3] setLocale:locales[i]];
            }
        for (int i = 0; i < 2; i++) {
            switch (i) {
                case 0:
                    NSLog(@"------中国日期格式--------");
                    break;
                    
                case 1:
                    NSLog(@"------美国日期格式--------");
                    break;
            }
            NSLog(@"SHORT格式的日期格式:%@",[df[i * 4]stringFromDate:dt]);
            NSLog(@"MEDIUM格式的日期格式:%@",[df[i * 4 + 2]stringFromDate:dt]);
            NSLog(@"LONG格式的日期格式:%@",[df[i * 4 + 2]stringFromDate:dt]);
            NSLog(@"FULL格式的日期格式:%@",[df[i * 4 + 3]stringFromDate:dt]);
        }
        NSDateFormatter *df2 = [[NSDateFormatter alloc]init];
        [df2 setDateFormat:@"公元 yyyy 年 MM 月 HH 时 mm 分"];
        NSLog(@"%@",[df2 stringFromDate:dt]);
        NSString *datestr = @"2016 - 04 - 27";
        NSDateFormatter *df3 = [[NSDateFormatter alloc]init];
        [df3 setDateFormat:@"yyyy-MM-dd"];
        NSDate *date2 = [df3 dateFromString:datestr];
        NSLog(@"%@",date2);
        
            
    }
    return 0;
}

