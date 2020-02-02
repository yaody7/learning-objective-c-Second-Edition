//
//  main.m
//  Appliance
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [[BNRAppliance alloc]init];
        a.test =1;
        NSLog(@"a is %@", a);
        a.productName = @"Washing Machine";
        a.voltage = 240;
        NSLog(@"a is %@", a);
    }
    return 0;
}
