//
//  BNRStockHolding.m
//  Exercise 18.6
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (NSString *)description
{
    return [NSString stringWithFormat:@"purchase:%f, current:%f, number:%d, symbol:%@",[self costInDollars],[self valueInDollars],[self numberOfShares],self.symbol];
}
- (float)costInDollars{
    return _purchaseSharePrice * _numberOfShares;
}
- (float)valueInDollars{
    return _currentSharePrice * _numberOfShares;
}
- (float)currentSharePrice{
    return _currentSharePrice;
}
- (float)purchaseSharePrice{
    return _purchaseSharePrice;
}
- (int)numberOfShares{
    return _numberOfShares;
}
- (void)setCurrentSharePrice:(float)p{
    _currentSharePrice = p;
}
- (void)setPurchaseSharePrice:(float)p{
    _purchaseSharePrice = p;
}
- (void)setNumberOfShares:(int)n{
    _numberOfShares = n;
}
@end
