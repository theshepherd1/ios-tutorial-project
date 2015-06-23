//
//  ViewController.h
//  SpeechRecgnizer
//
//  Created by Tony Mu on 6/17/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OpenEars/OELanguageModelGenerator.h>
#import <OpenEars/OEAcousticModel.h>
#import <OpenEars/OEEventsObserver.h>

@interface ViewController : UIViewController <OEEventsObserverDelegate>

@property (strong, nonatomic) OEEventsObserver *openEarsEventsObserver;

@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;


- (IBAction)startRec:(id)sender;
- (IBAction)pauseRec:(id)sender;


@end

