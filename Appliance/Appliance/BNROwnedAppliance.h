//
//  BNROwnedAppliance.h
//  Appliance
//
//  Created by ydy on 2020/2/2.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;

//choose to init
-(instancetype)initWithProductName:(NSString *)pn
                    firstOwnerName:(NSString*)n;
-(void)addOwnerName:(NSString *)n;
-(void)removeOwnerName:(NSString *)n;
@end

NS_ASSUME_NONNULL_END
