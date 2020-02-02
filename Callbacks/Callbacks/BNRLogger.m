//
//  BNRLogger.m
//  Callbacks
//
//  Created by ydy on 2020/1/30.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger
- (NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}
- (void)updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self willChangeValueForKey:@"lastTime"];
    _lastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

+ (NSSet<NSString *> *)keyPathsForValuesAffectingLastTimeString
{
    return [NSSet setWithObjects:@"lastTime", nil];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc]init];
    }
    [_incomingData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all");
    NSString *string=[[NSString alloc]initWithData:_incomingData
                                          encoding:NSUTF8StringEncoding];
    _incomingData=nil;
    NSLog(@"string has %lu characters", [string length]);
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
    
}
@end
