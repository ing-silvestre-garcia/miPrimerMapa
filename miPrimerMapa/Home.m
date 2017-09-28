//
//  ViewController.m
//  miPrimerMapa
//
//  Created by Silvestre Garcia on 9/27/17.
//  Copyright © 2017 silver. All rights reserved.
//

#import "Home.h"
#import <GoogleMaps/GoogleMaps.h>

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.6817814
                                                            longitude:-103.4648342
                                                                 zoom:16];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.6817814, -103.4648342);
    marker.title = @"Estadio Chivas";
    marker.snippet = @"Zapopan";
    marker.map = mapView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
