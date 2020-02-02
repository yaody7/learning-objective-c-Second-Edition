//
//  main.m
//  Exercise 18.6
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *account = [NSMutableArray array];
        BNRStockHolding *first = [[BNRStockHolding alloc]init];
        BNRStockHolding *second = [[BNRStockHolding alloc]init];
        BNRStockHolding *third = [[BNRStockHolding alloc]init];
        [first setPurchaseSharePrice:2.30];
        [first setCurrentSharePrice:4.50];
        [first setNumberOfShares:40];
        [second setPurchaseSharePrice:12.19];
        [second setCurrentSharePrice:10.56];
        [second setNumberOfShares:90];
        [third setPurchaseSharePrice:45.10];
        [third setCurrentSharePrice:49.51];
        [third setNumberOfShares:210];
        [account addObject:first];
        [account addObject:second];
        [account addObject:third];
        
        BNRForeignStockHolding *fourth = [[BNRForeignStockHolding alloc]init];
        fourth.purchaseSharePrice=2.30;
        fourth.currentSharePrice=4.50;
        fourth.numberOfShares=40;
        fourth.conversionRate=0.94;
        [account addObject:fourth];
        
        first.symbol=@"a";
        second.symbol=@"b";
        third.symbol=@"c";
        fourth.symbol=@"d";
        
        for (BNRStockHolding *a in account){
            NSLog(@"purchase:%f, current:%f, account:%d",[a purchaseSharePrice], [a currentSharePrice], [a numberOfShares]);
        }
        NSLog(@"purchase:%f, current:%f, account:%d, rate:%f",[account[3] purchaseSharePrice], [account[3] currentSharePrice], [account[3] numberOfShares], [account[3] conversionRate]);
        
        BNRPortfolio *test = [[BNRPortfolio alloc]init];
        [test addHolding:first];
        [test addHolding:second];
        [test addHolding:third];
        [test addHolding:fourth];
        NSLog(@"Top 3 holdings: %@", [test top3Holdings]);
        NSLog(@"Holdngs sorted by symbol: %@", [test sortBySymbol]);
    }
    return 0;
}
