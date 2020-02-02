//
//  main.m
//  BMITime
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
 /*       BNREmployee *mikey = [[BNREmployee alloc]init];
        
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        mikey.employeeID = 12;
        NSDateFormatter *temp = [[NSDateFormatter alloc]init];
        temp.dateFormat = @"yyyy-MM-dd";
        mikey.hireDate = [temp dateFromString:@"1998-01-27"];
        float height = mikey.heightInMeters;
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a BMI of %.2f, has worked with us for %.2f years", bmi, years);
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
        */
        
        NSMutableArray *employees =[[NSMutableArray alloc]init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        for (int i = 0; i < 10; i++){
            BNREmployee *mikey = [[BNREmployee alloc]init];
            
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
            
            if(i==0){
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            if(i==1){
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 10; i++){
            BNRAsset *asset = [[BNRAsset alloc]init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee * randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa,eid]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"executives:%@", executives);
        
        NSLog(@"CEO:%@", executives[@"CEO"]);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate  predicateWithFormat:@"holder.valueOfAssets > 700"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
        
        
    }
   // sleep(100);
    return 0;
}
