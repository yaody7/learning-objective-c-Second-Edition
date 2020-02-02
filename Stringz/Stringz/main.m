//
//  main.m
//  Stringz
//
//  Created by ydy on 2020/1/30.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc]init];
        for(int i = 0; i < 10; i++){
            [str appendString:@"Aaron is cool!\n"];
        }
        NSError *error;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        if(success){
            NSLog(@"done writing /tmp/cool.txt");
        }else{
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        NSString *readStr = [[NSString alloc]initWithContentsOfFile:@"/etc/resolv.conf"
                                                           encoding:NSASCIIStringEncoding
                                                              error:&error];
        if(!readStr){
            NSLog(@"read failed: %@", [error localizedDescription]);
        }else{
            NSLog(@"resolv.conf looks like this: %@", readStr);
        }
    }
    return 0;
}
