//
//  main.m
//  NSTimer(定时器)
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [NSTimer scheduledTimerWithTimeInterval:0.5
                                    target:self
                                    selector:@selector(info:)
                                    userInfo:nil
                                    repeats:YES];
        
    }
    return 0;
}
