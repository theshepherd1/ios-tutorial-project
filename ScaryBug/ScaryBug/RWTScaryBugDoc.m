//
//  RWTScaryBugDoc.m
//  ScaryBug
//
//  Created by Tony Mu on 6/7/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "RWTScaryBugDoc.h"

@implementation RWTScaryBugDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString *)title Rating:(float)rating ThumbImage:(UIImage *)thumbImage FullImage:(UIImage *)fullImage;
{
    if(self = [super init]) {
        self.data = [[RWTScaryBugData alloc] initWithTitle:title Rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
        
    }
    
    return self;
}

@end
