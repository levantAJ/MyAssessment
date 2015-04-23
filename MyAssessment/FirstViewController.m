//
//  ViewController.m
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  self.secondViewController = (SecondViewController *)segue.destinationViewController;
  self.secondViewController.delegate = self;
  self.secondViewController.view.backgroundColor = [self getGolorBySegueIdentifier:segue.identifier];
}

#pragma mark - Private helpers
- (UIColor *)getGolorBySegueIdentifier:(NSString *)identifier{
  UIColor *color = [UIColor whiteColor];
  if ([identifier isEqualToString:@"leftSegue"]) {
    color = [UIColor blueColor];
  }else if ([identifier isEqualToString:@"centerSegue"]){
    color = [UIColor redColor];
  }else if ([identifier isEqualToString:@"rightSegue"]){
    color = [UIColor greenColor];
  }
  return color;
}

#pragma mark - SecondViewControllerDelegate
- (void)secondViewControllerDidDismissWithData:(NSObject *)data{
  NSString *text = (NSString *)data;
  self.mainLabel.text = text;
}


@end
