//
//  main.m
//  数组（NSARRAY）
//
//  Created by lwb on 16/4/27.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"Keep study",@"keep budlid",@"studay hard",@"eveytone looa at me!",@"I wanna fuck u!",nil];
        NSLog(@"First element:%@",[array objectAtIndex:0]);
        NSLog(@"First Index: %@",[array objectAtIndex:1]);
        NSLog(@"Last element:%@",[array lastObject]);
        NSArray* arr1 = [array objectsAtIndexes: [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
        NSLog(@"%@",arr1);
        NSLog(@"keep study location is :%1d",[array indexOfObject:@"keep study"]);
        NSLog(@"In 2 to 4,keep study loaction is: %1d",[array indexOfObject:@"keep study" inRange:NSMakeRange(2, 3)]);
        array = [array arrayByAddingObject:@"MIKE"];
        array = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"lEE",@"Lau", nil]];
        for (int i = 0; i < array.count; i++) {
            NSLog(@"%@",[array objectAtIndex:i]);
            
        }
        NSArray *arr2 = [array subarrayWithRange:NSMakeRange(5, 3)];
        [arr2 writeToFile:@"myFile.txt" atomically:YES];
    }
    return 0;
}
