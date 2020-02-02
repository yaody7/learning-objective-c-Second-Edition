//
//  BNRAsset.h
//  BMITime
//
//  Created by ydy on 2020/1/27.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
