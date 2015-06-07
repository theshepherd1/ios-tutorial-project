//
//  SpendingAmountViewController.h
//  MoneyTracker
//
//  Created by Tony Mu on 6/4/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpendingAmountViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UIButton *amountPageGoButton;
@property (weak, nonatomic) IBOutlet UIButton *amountPageAddButton;
@property (strong, nonatomic) IBOutlet SpendingAmountViewController *a;

- (IBAction)addNewSpending:(id)sender;
@end
