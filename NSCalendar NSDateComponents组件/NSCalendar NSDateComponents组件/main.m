//
//  main.m
//  NSCalendar NSDateComponents组件
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSCalendar *gregorian = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dt = [NSDate date];
        unsigned unitFlags = NSYearCalendarUnit |  NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
        NSDateComponents *comp = [gregorian components:unitFlags fromDate:dt];
        NSLog(@"现在是 %1d 年",comp.year);
        NSLog(@"现在是 %1d 月",comp.month);
        NSLog(@"现在是 %1d 日",comp.day);
        NSLog(@"现在是 %1d 时",comp.hour);
        NSLog(@"现在是 %1d 分",comp.minute);
        NSLog(@"现在是 %1d 秒",comp.second);
        NSLog(@"现在是星期 %1d",comp.weekday);
        NSDateComponents *comp2 = [[NSDateComponents alloc]init];
        comp2.year = 2016;
        comp2.month = 4;
        comp2.day = 27;
        comp2.hour = 18;
        comp2.minute = 34;
        NSDate *date = [gregorian dateFromComponents:comp2];
        NSLog(@"获取的日期是 %@",date);
        
        
    }
    return 0;
}
