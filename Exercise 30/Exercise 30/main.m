//
//  main.m
//  Exercise 30
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"array";
        stock[@"test"] = [[NSArray alloc]initWithObjects:@1,@2,@3,nil];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"dictionary";
        stock[@"test"] = [NSMutableDictionary dictionary];
        stock[@"test"][@"symbol"] = @"dictionary";
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"string";
        stock[@"test"] = @"123";
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"bool";
        stock[@"test"] = @"1010101010";
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"date";
        stock[@"test"] = [NSDate date];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"int";
        stock[@"test"] = @1;
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"float";
        stock[@"test"] = @1.23;
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"bool";
        stock[@"test"] = @"bool";
        [stocks addObject:stock];
        
        NSLog(@"%@",stocks);
    }
    return 0;
}
