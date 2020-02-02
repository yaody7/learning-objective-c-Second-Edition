//
//  BNRAppliance.m
//  Appliance
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance
- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn{
    self = [super init];
    if(self){
        _productName = [pn copy];
        _voltage = 120;
    }
    return self;
}


- (NSString *)description
{
    _test = 2;
    NSLog(@"%d",self.test);
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}
@end
