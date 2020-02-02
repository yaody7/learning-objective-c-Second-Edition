//
//  main.m
//  VowelMovement
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];

        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            if(yRange.location != NSNotFound){
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }];
        NSLog(@"new strings: %@", devowelizedStrings);
    }
    return 0;
}
