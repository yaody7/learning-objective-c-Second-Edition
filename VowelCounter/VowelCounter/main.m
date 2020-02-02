//
//  main.m
//  VowelCounter
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRVowelCounting.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello, World!";
        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
    }
    return 0;
}
