//
//  BNREmployee.m
//  BMITime
//
//  Created by ydy on 2020/1/26.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCpde;

@end

@implementation BNREmployee

- (void)setAssets:(NSArray *)assets{
    _assets = [assets mutableCopy];
}

- (NSArray *)assets{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a{
    if(!_assets){
        _assets = [[NSMutableSet alloc]init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a{
    if(!_assets){
        _assets = [[NSMutableSet alloc]init];
    }
    [_assets removeObject:a];
}

- (unsigned int)valueOfAssets{
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += a.resaleValue;
    }
    return sum;
}

- (double) yearsOfEmployment{
    if (self.hireDate){
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else{
        return 0;
    }
}

- (float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
