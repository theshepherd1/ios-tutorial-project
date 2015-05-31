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
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
    }
    
    return self;
}

@end
