//
//  AppDelegate.m
//  222
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
    
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    self.window.backgroundColor=[UIColor redColor];
    [self.window makeKeyAndVisible];
    UITextView *fuck = [[UITextView alloc]initWithFrame:(CGRect)CGRectMake(10, 10, 10, 10)];
    fuck.backgroundColor=UIColor.redColor;
    [self.window addSubview:fuck];
    NSLog(@"FUFUFUF");




    return YES;
}





@end
