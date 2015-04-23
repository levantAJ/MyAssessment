//
//  SecondViewController.m
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Back", @"Back") style:UIBarButtonItemStylePlain target:self action:@selector(backButtonTouchUpInside:)];
  self.navigationItem.leftBarButtonItem = backButton;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)dealloc{
  self.delegate = nil;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
}

#pragma mark - User's Interactions

- (IBAction)leftButtonTouchUpInside:(id)sender{
  [self didDismissWithText:NSLocalizedString(@"button pressed is ONE", @"button pressed is ONE")];
  [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)centerButtonTouchUpInside:(id)sender{
  [self didDismissWithText:NSLocalizedString(@"button pressed is TWO", @"button pressed is TWO")];
  [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)rightButtonTouchUpInside:(id)sender{
  [self didDismissWithText:NSLocalizedString(@"button pressed is THREE", @"button pressed is THREE")];
  [self.navigationController popViewControllerAnimated:YES];
}

- (void)backButtonTouchUpInside:(id)sender{
  [self didDismissWithText:NSLocalizedString(@"None", @"None")];
  [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Private helps

- (void)didDismissWithText:(NSString *)text{
  id<SecondViewControllerDelegate> strongDelegate = self.delegate;
  if ([strongDelegate respondsToSelector:@selector(secondViewControllerDidDismissWithData:)]) {
    [strongDelegate secondViewControllerDidDismissWithData:text];
  }
}

@end
