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

//+ (id)addTextFieldWithButton: (UIButton *)button withSize: (CGSize)size withVerticalDistance: (float)vDistance withDistanceFromButton: (float)hDistance animated: (BOOL)animated {
//    CGRect screenSize = [[UIScreen mainScreen] bounds];
//    NSLog(@"%@%@",NSStringFromCGRect(screenSize),NSStringFromCGRect(button.frame));
//    
//    if (button.frame.origin.y < screenSize.size.height - 100) {
//    CGRect rectTf = CGRectMake(button.frame.origin.x + hDistance, button.frame.origin.y, size.width, size.height);
//        
//        [UIButton beginAnimations:nil context:nil];
//        [UIButton setAnimationDuration:0.5];
//    button.frame = CGRectMake(button.frame.origin.x, button.frame.origin.y+vDistance, button.frame.size.width, button.frame.size.height);
//        [UIButton commitAnimations];
//        
//        [UITextField beginAnimations:nil context:nil];
//        [UITextField setAnimationDuration:0.5];
//        UITextField *tf = [[UITextField alloc] initWithFrame:rectTf];
//        tf.borderStyle = UITextBorderStyleRoundedRect;
//        [UITextField commitAnimations];
//        
//        return tf;
//    } else {
//        return 0;
//    }
//    
//    
//}
//
- (IBAction)addNewField:(id)sender {
//    CGFloat h = [[UIScreen mainScreen] bounds].size.height;

    
    
    UITextField *tf = [AnimatedAddingNewTextFields addTextFieldWithButton: self.addButton withSize: CGSizeMake(150, 30) withVerticalDistance: 50 withDistanceFromButton: 120 animated: YES];
    
    [self.view addSubview:tf];
    
    if (self.addButton.frame.origin.y <= self.mainView.frame.size.height - 150) {
        
    
    } else {
        CGFloat X = self.addButton.frame.origin.x;
        X -= 100;
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:1.5];
        self.addButton.frame = CGRectMake(X, self.addButton.frame.origin.y, self.addButton.frame.size.width, self.addButton.frame.size.height);

        [UIButton commitAnimations];
    }
    
    
    
//    NSLog(@"%@",NSStringFromCGRect(rect));
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
//    [UITextField commitAnimations];
//
//    [self.view addSubview:newTf];
//    if (self.addButton.frame.origin.y > 400.0) {
//        self.addButton.hidden = YES;
//    }
}

- (IBAction)recordSpending:(id)sender {
//    NSLog(@"go");
    CatagoryViewController *view = [[CatagoryViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:view animated:YES];
}
@end
