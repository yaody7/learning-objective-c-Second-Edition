//
//  BNRPortfolio.m
//  Exercise 18.6
//
//  Created by ydy on 2020/1/27.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"
@implementation BNRPortfolio
{
    NSMutableArray *_holdings;
}
- (void)setHoldings:(NSArray *)holdings{
    _holdings = [holdings mutableCopy];
}

- (NSArray *)holdings{
    return [_holdings copy];
}

- (void)addHolding:(id)holding{
    if(!_holdings){
        _holdings=[[NSMutableArray alloc]init];
    }
    [_holdings addObject:holding];
}

- (void)removeHolding:(id)holding{
    if(!_holdings){
        _holdings=[[NSMutableArray alloc]init];
    }
    [_holdings removeObject:holding];
}

- (float)totalValue{
    float number = 0;
    for(BNRStockHolding *b in _holdings){
        number += [b valueInDollars] * [b numberOfShares];
    }
    return number;
}

- (NSArray *)top3Holdings{
    @autoreleasepool {
        NSSortDescriptor *sortByNumber = [NSSortDescriptor sortDescriptorWithKey:@"numberOfShares" ascending:NO];
        [_holdings sortUsingDescriptors:@[sortByNumber]];
        NSArray *answer = [[NSArray alloc]initWithObjects:_holdings[0],_holdings[1],_holdings[2], nil];
        return answer;
    }
}

- (NSArray *)sortBySymbol{
    @autoreleasepool {
        NSSortDescriptor *SBS = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
        [_holdings sortUsingDescriptors:@[SBS]];
         return [_holdings copy];
    }
}
@end
