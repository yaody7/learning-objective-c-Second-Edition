//
//  main.m
//  Exercise 37
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRDate.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *test = [NSDate date];
        NSLog(@"%@",[test midnightForYear:1870 Month:1 Day:1]);
    }
    return 0;
}
