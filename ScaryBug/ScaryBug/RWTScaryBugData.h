//
//  RWTScaryBugData.h
//  ScaryBug
//
//  Created by Tony Mu on 6/7/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle: (NSString *)title Rating: (float)rating;

@end
