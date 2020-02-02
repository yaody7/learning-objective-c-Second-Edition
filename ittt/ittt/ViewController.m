//
//  ViewController.m
//  ittt
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
    
    //create frame
    CGRect tableFrame = CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    //set tasktable
    self.taskTable = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    self.taskTable.dataSource = self;
    self.taskTable.delegate = self;
    
    //set taskfield
    self.taskField = [[UITextField alloc]initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"type a task, tap Insert";
    
    //set insertButton
    self.insertButten = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButten.frame = buttonFrame;
    [self.insertButten addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    [self.insertButten setTitle:@"Insert" forState:UIControlStateNormal];
    
    
    //add subview
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButten];
}

- (void)addTask:(id)sender{
    NSString *text = [self.taskField text];
    if([text length]==0){
        return;
    }
   // NSLog(@"Task entered: %@", text);
    [self.tasks addObject:text];
    [self.taskTable reloadData];
    [self.taskField setText:@""];
    [self.taskField resignFirstResponder];
}


#pragma mark - 管理表格视图
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.tasks count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    return c;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tasks removeObjectAtIndex:indexPath.row];
    [self.taskTable deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"GETGET!");
    cell.textLabel.text=@"baga";
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"selected!");
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"You baga delete!";
}
#pragma mark - 辅助函数
NSString *docPath(void){
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@end
