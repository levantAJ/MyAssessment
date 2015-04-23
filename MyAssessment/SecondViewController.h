//
//  SecondViewController.h
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate;

@interface SecondViewController : UIViewController

@property (nonatomic, weak) id<SecondViewControllerDelegate> delegate;

@end

@protocol SecondViewControllerDelegate <NSObject>

@optional
- (void)secondViewControllerDidDismissWithData:(NSObject *)data;

@end
