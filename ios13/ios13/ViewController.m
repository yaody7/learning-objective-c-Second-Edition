//
//  ViewController.m
//  ios13
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *test = [[UILabel alloc]init];
    test.backgroundColor=UIColor.redColor;
    [self.view addSubview:test];
    NSLog(@"FUCK");
}


@end
