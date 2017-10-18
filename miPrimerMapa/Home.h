//
//  ViewController.h
//  miPrimerMapa
//
//  Created by Silvestre Garcia on 9/27/17.
//  Copyright © 2017 silver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface Home : UIViewController<CLLocationManagerDelegate>
@property (strong, nonatomic)   CLLocationManager   *locationManager;
@property (strong, nonatomic)   CLLocation          *location;
@property (strong, nonatomic) IBOutlet UILabel *lblCountry;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@end
