//
//  ViewController.m
//  Quiz2
//
//  Created by Tony Mu on 5/28/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"question 1"];
        [questions addObject:@"What is the place?"];
        [questions addObject:@"How much is the bottle?"];
        
        [answers addObject:@"answer 1"];
        [answers addObject:@"Columbia"];
        [answers addObject:@"4 dollars"];
    }

}

- (IBAction)showQuestion:(id)sender {
    currentQuestionIndex++;
    NSLog(@"%lu", questions.count);
    if(currentQuestionIndex == questions.count - 1)
    {
        currentQuestionIndex = 0;
    }
    
    [self.questionLabel setText: (NSString *)[questions objectAtIndex:currentQuestionIndex]];
    
    
}

- (IBAction)showAnswer:(id)sender {
    [self.answerLabel setText: (NSString *)[answers objectAtIndex:currentQuestionIndex]];
}
@end
