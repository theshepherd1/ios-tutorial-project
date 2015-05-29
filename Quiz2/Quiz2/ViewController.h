
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
}

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (weak, nonatomic) IBOutlet UIButton *questionButton;
@property (weak, nonatomic) IBOutlet UIButton *answerButton;

- (IBAction)showQuestion:(id)sender;

- (IBAction)showAnswer:(id)sender;

@end

