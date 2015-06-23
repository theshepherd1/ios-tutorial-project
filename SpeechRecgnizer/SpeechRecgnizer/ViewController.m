//
//  ViewController.m
//  SpeechRecgnizer
//
//  Created by Tony Mu on 6/17/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <OpenEars/OEPocketsphinxController.h>
#import <OpenEars/OEAcousticModel.h>


@interface ViewController () {

}

@end

@implementation ViewController
 NSString *lmPath;
 NSString *dicPath;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [OEPocketsphinxController sharedInstance].secondsOfSilenceToDetect = 0.5;
    
    OELanguageModelGenerator *lmGenerator = [[OELanguageModelGenerator alloc] init];
    
    NSArray *words = [NSArray arrayWithObjects:@"CARFAX", @"FORD", @"TWO THOUSAND AND TWELVE", @"TAURUS", @"HONDA", @"ACCORD", @"ONE", @"EIGHT", nil];
    NSString *name = @"test";
    NSError *err = [lmGenerator generateLanguageModelFromArray:words withFilesNamed:name forAcousticModelAtPath:[OEAcousticModel pathToModel:@"AcousticModelEnglish"]]; // Change "AcousticModelEnglish" to "AcousticModelSpanish" to create a Spanish language model instead of an English one.
    
    
    if(err == nil) {
        
        lmPath = [lmGenerator pathToSuccessfullyGeneratedLanguageModelWithRequestedName:@"test"];
        dicPath = [lmGenerator pathToSuccessfullyGeneratedDictionaryWithRequestedName:@"test"];
        
    } else {
        NSLog(@"Error: %@",[err localizedDescription]);
    }
    
    
    
    self.openEarsEventsObserver = [[OEEventsObserver alloc] init];
    [self.openEarsEventsObserver setDelegate:self];
    
    [self.openEarsEventsObserver.delegate pocketsphinxDidStartListening];
    [self.openEarsEventsObserver.delegate pocketsphinxDidDetectSpeech];
    
//    [self.openEarsEventsObserver.delegate pocketsphinxDidDetectFinishedSpeech];
    
    
}

- (IBAction)startRec:(id)sender {
    if ([OEPocketsphinxController sharedInstance].isSuspended) {
        [[OEPocketsphinxController sharedInstance] resumeRecognition];
    } else if ([[OEPocketsphinxController sharedInstance] isListening]) {
        NSLog(@"Already running");
    } else {
        [[OEPocketsphinxController sharedInstance] setActive:TRUE error:nil];

        [[OEPocketsphinxController sharedInstance] startListeningWithLanguageModelAtPath:lmPath dictionaryAtPath:dicPath acousticModelAtPath:[OEAcousticModel pathToModel:@"AcousticModelEnglish"] languageModelIsJSGF:NO]; // Change "AcousticModelEnglish" to "AcousticModelSpanish" to perform Spanish recognition instead of English.
    }
    

}

- (IBAction)pauseRec:(id)sender {
    if ([[OEPocketsphinxController sharedInstance] isListening]) {
        [[OEPocketsphinxController sharedInstance] suspendRecognition];
    } else {
        NSLog(@"No active service found");
    }
    
}

- (void) pocketsphinxDidReceiveHypothesis:(NSString *)hypothesis recognitionScore:(NSString *)recognitionScore utteranceID:(NSString *)utteranceID {
    
    
    NSLog(@"The received hypothesis is %@ with a score of %@ and an ID of %@", hypothesis, recognitionScore, utteranceID);
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterSpellOutStyle;
    f.locale = [NSLocale currentLocale];
    NSString *new = [hypothesis lowercaseString];
    NSNumber *num = [f numberFromString:new];
    
    NSLog(@"%@", num);
    
}

- (void) pocketsphinxDidStartListening {
    NSLog(@"Pocketsphinx is now listening.");
}

- (void) pocketsphinxDidDetectSpeech {
    NSLog(@"Pocketsphinx has detected speech." );
}

- (void) pocketsphinxDidDetectFinishedSpeech {
    NSLog(@"Pocketsphinx has detected a period of silence, concluding an utterance.");
}

- (void) pocketsphinxDidStopListening {
    NSLog(@"Pocketsphinx has stopped listening.");
}

- (void) pocketsphinxDidSuspendRecognition {
    NSLog(@"Pocketsphinx has suspended recognition.");
}

- (void) pocketsphinxDidResumeRecognition {
    NSLog(@"Pocketsphinx has resumed recognition.");
}

- (void) pocketsphinxDidChangeLanguageModelToFile:(NSString *)newLanguageModelPathAsString andDictionary:(NSString *)newDictionaryPathAsString {
    NSLog(@"Pocketsphinx is now using the following language model: \n%@ and the following dictionary: %@",newLanguageModelPathAsString,newDictionaryPathAsString);
}

- (void) pocketSphinxContinuousSetupDidFailWithReason:(NSString *)reasonForFailure {
    NSLog(@"Listening setup wasn't successful and returned the failure reason: %@", reasonForFailure);
}

- (void) pocketSphinxContinuousTeardownDidFailWithReason:(NSString *)reasonForFailure {
    NSLog(@"Listening teardown wasn't successful and returned the failure reason: %@", reasonForFailure);
}

- (void) testRecognitionCompleted {
    NSLog(@"A test file that was submitted for recognition is now complete.");
}
@end
