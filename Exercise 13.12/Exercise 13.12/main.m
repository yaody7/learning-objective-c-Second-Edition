//
//  main.m
//  Exercise 13.12
//
//  Created by ydy on 2020/1/22.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *CH = [NSHost currentHost];
        NSString *answer = [CH localizedName];
        NSLog(@"%@", answer);
    }
    return 0;
}
