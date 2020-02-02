//
//  main.m
//  Exercise 16.6
//
//  Created by ydy on 2020/1/23.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *answer = [NSString stringWithUTF8String:readline(NULL)];
        NSLog(@"Your input is %@",answer);
    }
    return 0;
}
