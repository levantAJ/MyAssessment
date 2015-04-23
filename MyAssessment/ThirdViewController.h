//
//  ThirdViewController.h
//  MyAssessment
//
//  Created by AJ on 4/23/15.
//  Copyright (c) 2015 AJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@end
