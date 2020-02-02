//
//  BNRAppliance.h
//  Appliance
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
@property (nonatomic) int test;
// choose to init
- (instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
