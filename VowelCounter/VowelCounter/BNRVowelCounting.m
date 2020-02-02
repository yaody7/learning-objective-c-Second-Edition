//
//  BNRVowelCounting.m
//  VowelCounter
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRVowelCounting.h"

@implementation NSString (BNRVowelCounting)

- (int)bnr_vowelCount{
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++){
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]){
            sum++;
        }
    }
    return sum;
}

@end
