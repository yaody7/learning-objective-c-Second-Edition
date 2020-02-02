//
//  BNROwnedAppliance.m
//  Appliance
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n{
    if(self = [super initWithProductName:pn]){
        _ownerNames = [[NSMutableSet alloc]init];
        
        if(n){
            [_ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerName:(NSString *)n{
    [_ownerNames addObject: n];
}

- (void)removeOwnerName:(NSString *)n{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames{
    return [_ownerNames copy];
}
@end
