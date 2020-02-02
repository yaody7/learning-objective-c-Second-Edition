//
//  main.m
//  Exercise 17.6
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *groceries = [NSMutableArray array];
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Container of milk";
        NSString *butter = @"Stick of butter";
        [groceries addObject:bread];
        [groceries addObject:milk];
        [groceries addObject:butter];
        for (NSString *g in groceries){
            NSLog(@"%@", g);
        }
    }
    return 0;
}
