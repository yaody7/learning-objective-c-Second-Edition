//
//  BNRLogger.h
//  Callbacks
//
//  Created by ydy on 2020/1/30.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject<NSURLConnectionDelegate,NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
@end

NS_ASSUME_NONNULL_END
