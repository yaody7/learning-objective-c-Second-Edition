//
//  main.m
//  ImageFetch
//
//  Created by ydy on 2020/1/30.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"https://himg.bdimg.com/sys/portrait/item/ba9be794a8e5ae9ee58a9be79585e6b8b8e4b896e7958c993f"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        if (!written){
            NSLog(@"write failed: %@", [error localizedDescription]);
        }
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
    }
    return 0;
}
