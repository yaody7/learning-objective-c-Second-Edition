//
//  BNRForeignStockHolding.m
//  Exercise 18.6
//
//  Created by ydy on 2020/1/27.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars{
    return _purchaseSharePrice*_conversionRate;
}

- (float)valueInDollars{
    return _currentSharePrice*_conversionRate;
}
@end
