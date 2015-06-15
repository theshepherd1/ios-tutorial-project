//
//  RWTScaryBugDoc.h
//  ScaryBug
//
//  Created by Tony Mu on 6/7/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RWTScaryBugData.h"
#import <UIKit/UIKit.h>

@interface RWTScaryBugDoc : NSObject


@property (strong) RWTScaryBugData *data;
@property (assign) UIImage *fullImage;
@property (assign) UIImage *thumbImage;

- (id)initWithTitle: (NSString *)title Rating:(float)rating ThumbImage: (UIImage *)thumbImage FullImage: (UIImage *)fullImage;


@end
