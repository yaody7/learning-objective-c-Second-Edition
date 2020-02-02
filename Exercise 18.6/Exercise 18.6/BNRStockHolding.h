//
//  BNRStockHolding.h
//  Exercise 18.6
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

@property NSString *symbol;

- (float)costInDollars;
- (float)valueInDollars;
- (float)purchaseSharePrice;
- (float)currentSharePrice;
- (int)numberOfShares;
- (void)setPurchaseSharePrice:(float)p;
- (void)setCurrentSharePrice:(float)p;
- (void)setNumberOfShares:(int)n;
@end

NS_ASSUME_NONNULL_END
