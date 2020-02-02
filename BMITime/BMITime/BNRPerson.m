//
//  BNRPerson.m
//  BMITime
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson


- (float)bodyMassIndex{
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}

@end
