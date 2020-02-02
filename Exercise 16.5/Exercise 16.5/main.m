//
//  main.m
//  Exercise 16.5
//
//  Created by ydy on 2020/1/23.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *map = @"aBcDeF";
        BOOL isContain = [map localizedCaseInsensitiveContainsString:@"abd"];
        if (isContain)
            NSLog(@"Contain");
        else
            NSLog(@"Not Contain");
    }
    return 0;
}
