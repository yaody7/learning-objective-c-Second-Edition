//
//  BNRPerson.h
//  BMITime
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

- (float)bodyMassIndex;
@end

NS_ASSUME_NONNULL_END
