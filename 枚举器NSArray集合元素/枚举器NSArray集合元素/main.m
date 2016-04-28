//
//  main.m
//  枚举器NSArray集合元素
//
//  Created by lwb on 16/4/28.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithContentsOfFile:@"myfile.txt"];
        NSEnumerator *en = [array objectEnumerator];
        id object;
        while (object = [en nextObject]) {
            NSLog(@"%@",object);
        }
        NSLog(@"------next enumerate -------");
        en = [array reverseObjectEnumerator];
        while (object = [en nextObject]) {
            NSLog(@"%@",object);
        }
    }
    return 0;
}
