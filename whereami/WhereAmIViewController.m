//
//  WhereAmIViewController.m
//  whereami
//
//  Created by Tony Mu on 5/31/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import "WhereAmIViewController.h"

@interface WhereAmIViewController ()


@end

@implementation WhereAmIViewController
- (void)viewDidLoad;
{
    [super viewDidLoad];
    
    if(self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate: self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
        
        [self.currentLocationLabel setText:self.location];
        
        NSLog(@"The location is: %@", self.location);
    }
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    
//    if(self) {
//        locationManager = [[CLLocationManager alloc] init];
//        
//        [locationManager setDelegate: self];
//        
//        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
//        
//        [locationManager startUpdatingLocation];
//    }
//    
//    return self;
//}

- (void)locationManager: (CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
{
    self.location = [newLocation description];
    NSLog(@"%@",[newLocation description]);
}

- (void)locationManager: (CLLocationManager *)manager
       didFailWithError:(NSError *)error;
{
    NSLog(@"Could not find location: %@", [error description]);
}

@end
