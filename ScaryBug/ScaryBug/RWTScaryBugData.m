//
//  RWTScaryBugData.m
//  ScaryBug
//
//  Created by Tony Mu on 6/7/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "RWTScaryBugData.h"

@implementation RWTScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString *)title Rating:(float)rating;
{
    if(self = [super init]) {
        self.title = title;
        self.rating = rating;
    }
    
    return self;
}


@end
