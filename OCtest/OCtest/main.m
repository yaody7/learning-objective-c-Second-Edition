//
//  main.m
//  OCtest
//
//  Created by ydy on 2020/1/21.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        NSArray *dateList = @[now, tomorrow, yesterday];
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
//        NSLog(@"There are %lu dates", [dateList count]);
        for (NSDate *d in dateList){
//            NSLog(@"Here is a date: %@", d);
        }
        
        NSMutableArray *mutableDateList = [NSMutableArray array];
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        [mutableDateList insertObject:yesterday atIndex:0];
        [mutableDateList insertObject:yesterday atIndex:0];
        [mutableDateList removeObject:yesterday];
        
        for (NSDate *d in mutableDateList){
            NSLog(@"Here is a date: %@", d);
        }
    
        NSLog(@"Now the first date is %@", mutableDateList[0]);
    }
    return 0;
}
