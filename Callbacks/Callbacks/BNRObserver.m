//
//  BNRObserver.m
//  Callbacks
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observed: %@ of was change from %@ to %@", keyPath, object, oldValue, newValue);
}

@end
