#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface WhereAmIViewController : UIViewController
{
    CLLocationManager *locationManager;
}

@property (weak, nonatomic) IBOutlet UILabel *currentLocationLabel;
@property (weak, nonatomic) NSString *location;
@end
