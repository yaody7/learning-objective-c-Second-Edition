//
//  BNREmployee.h
//  BMITime
//
//  Created by ydy on 2020/1/26.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;

@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
- (double) yearsOfEmployment;
- (void) addAsset:(BNRAsset *)a;
- (void) removeAsset:(BNRAsset *)a;
- (unsigned int) valueOfAssets;

@end

NS_ASSUME_NONNULL_END
