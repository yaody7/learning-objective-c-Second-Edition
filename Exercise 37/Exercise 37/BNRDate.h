//
//  BNRDate.h
//  Exercise 37
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (BNRDate)
- (NSDate *)midnightForYear:(int)y Month:(int)m Day:(int)day;
@end

NS_ASSUME_NONNULL_END
