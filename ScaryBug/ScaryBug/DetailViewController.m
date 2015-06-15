//
//  DetailViewController.m
//  ScaryBug
//
//  Created by Tony Mu on 6/7/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "DetailViewController.h"
#import "RWTRateView.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *rateView;

- (IBAction)changeImageButton:(id)sender;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    NSArray *images = [NSArray alloc] initWithObjects:, nil
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeImageButton:(id)sender {
    NSLog(@"Tappe on the button");
}
@end
