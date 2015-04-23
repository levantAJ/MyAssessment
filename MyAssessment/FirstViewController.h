//
//  ViewController.h
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface FirstViewController : UIViewController <SecondViewControllerDelegate>
@property (nonatomic, weak) SecondViewController *secondViewController;
@property (nonatomic, weak) IBOutlet UILabel *mainLabel;
@end
