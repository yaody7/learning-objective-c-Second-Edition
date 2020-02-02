//
//  main.m
//  Exercise 17.6.2
//
//  Created by ydy on 2020/1/25.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // get nameArray
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        //get wordArray
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        NSMutableArray *answer = [NSMutableArray array];
        
        //match two arrays
        for(NSString *n in names){
            for(NSString *w in words){
                if([n isEqualToString:w]){
                    [answer addObject:w];
                }
            }
        }
        
        //output
        for(NSString *a in answer){
            NSLog(@"%@", a);
        }
    }
    return 0;
}
