//
//  main.m
//  NSMutableArray（可变数组）
//
//  Created by lwb on 16/4/28.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
NSString* NSColletionToString(NSArray *array)
{
    NSMutableString *result = [NSMutableString stringWithString:@"[" ];
    for (id obj in array) {
        [result appendString:[obj description]];
        [result appendString:@","];
    }
    NSUInteger len = [result length];
    [result deleteCharactersInRange:NSMakeRange(len-2, 2)];
    //[result deleteCharactersInRange:NSMakeRange(len - 2, 2)];
    [result appendString:@"]"];
    return result;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray arrayWithContentsOfFile:@"myFile.txt"];
        [array addObject:@"英语"];
        NSLog(@"Last add one element: %@",NSColletionToString(array));
        [array addObjectsFromArray:[NSArray arrayWithObjects:@"teacher",@"student", nil]];
        NSLog(@"last add two element:%@",NSColletionToString(array));
        [array insertObject:@"Crazy dog" atIndex:2];
        NSLog(@"index equal 2,Insert an element %@",NSColletionToString(array));
        [array insertObject:[NSArray arrayWithObjects:@"Lau",@"lee", nil] atIndex:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
        NSLog(@"Insert many element:%@",NSColletionToString(array));
        [array removeLastObject];
        NSLog(@"Delete lase element is:%@",NSColletionToString(array));
        [array removeObjectAtIndex:5];
        NSLog(@"Delete 5 element is: %@",NSColletionToString(array));
        [array removeObjectsInRange:NSMakeRange(2, 3)];
        NSLog(@"Delete 2 to 4 element:%@",NSColletionToString(array));
        [array replaceObjectAtIndex:2 withObject:NSColletionToString(array)];
        NSLog(@"Replace index is 2 element:%@",NSColletionToString(array));
    }
    return 0;
}
