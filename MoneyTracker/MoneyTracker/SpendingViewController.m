//
//  SpendingViewController.m
//  MoneyTracker
//
//  Created by Tony Mu on 6/8/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "SpendingViewController.h"

@interface SpendingViewController ()
@end

@implementation SpendingViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//
//- (IBAction)addNewField:(id)sender {
//    CGRect rectButton = self.addButton.frame;
//    [UIButton beginAnimations:nil context:nil];
//    [UIButton setAnimationDuration:1.0];
//    self.addButton.frame = rectButton;
//    
//    [UIButton commitAnimations];
//
//    
//    CGRect rectTf = CGRectMake(rectButton.origin.x + 120, rectButton.origin.y, 150, 30);
//    rectButton = CGRectMake(self.addButton.frame.origin.x, self.addButton.frame.origin.y + 40, self.addButton.frame.size.width, self.addButton.frame.size.height);
//
//    [UIButton beginAnimations:nil context:nil];
//    [UIButton setAnimationDuration:1.0];
//    self.addButton.frame = rectButton;
//
//    [UIButton commitAnimations];
//
//    UITextField *newTf;
//
//    [UITextField beginAnimations:nil context:nil];
//    [UITextField setAnimationDuration:1.0];
//    newTf = [[UITextField alloc] initWithFrame:rectTf];
//    newTf.borderStyle = UITextBorderStyleRoundedRect;
//    [self.view addSubview:newTf];
//    [UITextField commitAnimations];
//
//    NSLog(@"%f",self.addButton.frame.origin.y);
//    if (self.addButton.frame.origin.y > 400.0) {
//        self.addButton.hidden = YES;
//    }
//}

- (IBAction)recordSpending:(id)sender {
    NSLog(@"go");
}
@end
