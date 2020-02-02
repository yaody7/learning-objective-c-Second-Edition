//
//  BNRAsset.m
//  BMITime
//
//  Created by ydy on 2020/1/27.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description{
  //  return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    if (self.holder){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
