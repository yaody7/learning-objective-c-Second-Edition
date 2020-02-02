//
//  BNRPortfolio.h
//  Exercise 18.6
//
//  Created by ydy on 2020/1/27.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject


@property(nonatomic, copy) NSArray *holdings;
- (float)totalValue;
- (void)addHolding:(id)holding;
- (void)removeHolding:(id)holding;
- (NSArray *)top3Holdings;
- (NSArray *)sortBySymbol;

@end


NS_ASSUME_NONNULL_END
