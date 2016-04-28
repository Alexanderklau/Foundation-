//
//  main.m
//  快速枚举(for in)
//
//  Created by lwb on 16/4/28.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithContentsOfFile:@"myFile.txt"];
        for (id object in array) {
            NSLog(@"%@",object);
        }
    }
    return 0;
}
