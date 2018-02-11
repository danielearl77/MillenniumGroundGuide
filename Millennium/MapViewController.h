//
//  MapViewController.h
//  Millennium
//
//  Created by Daniel Earl on 07/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
{
    IBOutlet MKMapView *map;
}

@property (strong, nonatomic) CLLocationManager *locationManager;

@end
