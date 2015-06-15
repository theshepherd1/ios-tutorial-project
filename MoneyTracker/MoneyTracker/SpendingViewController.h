//
//  SpendingViewController.h
//  MoneyTracker
//
//  Created by Tony Mu on 6/8/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CatagoryViewController.h"

@interface SpendingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UILabel *USDLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *goButton;

@property (strong, nonatomic) NSMutableArray *tfArray;
- (IBAction)addNewField:(id)sender;
- (IBAction)recordSpending:(id)sender;

@end
