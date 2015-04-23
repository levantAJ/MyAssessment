//
//  ThirdViewController.m
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Back", @"Back") style:UIBarButtonItemStylePlain target:self action:@selector(backButtonTouchUpInside:)];
  self.navigationItem.leftBarButtonItem = backButton;
  
  self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  // Return the number of rows in the section.
  return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  if (!cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
  }
  
  NSDateComponents *dayComponent = [[NSDateComponents alloc] init];
  dayComponent.day = indexPath.row;
  NSCalendar *theCalendar = [NSCalendar currentCalendar];
  NSDate *date = [theCalendar dateByAddingComponents:dayComponent toDate:[NSDate date] options:0];
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateFormat:@"dd MMMM yyyy"];
  NSString *dateString = [formatter stringFromDate:date];
  cell.textLabel.text = dateString;
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
  return 0;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
}

#pragma mark - User's Interactions
- (void)backButtonTouchUpInside:(id)sender{
  [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Private Helps
@end
