//
//  ViewController.h
//  ittt
//
//  Created by ydy on 2020/2/1.
//  Copyright © 2020 ydy. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButten;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;
- (void)removeTask:(id)sender;
@end

