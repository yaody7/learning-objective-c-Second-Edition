//
//  AppDelegate.h
//  iOStest
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow * window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButten;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

