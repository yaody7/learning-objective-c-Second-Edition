//
//  BNRDate.m
//  Exercise 37
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRDate.h"

@implementation NSDate(BNRDate)

- (NSDate *)midnightForYear:(int)y Month:(int)m Day:(int)d{
    NSDateFormatter *temp = [[NSDateFormatter alloc]init];
    temp.dateFormat = @"yyyy-MM-dd";
    NSDate *answer = [temp dateFromString:[NSString stringWithFormat:@"%d-%d-%d",y,m,d]];
    return answer;
}

@end
