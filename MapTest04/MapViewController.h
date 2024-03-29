//
//  MapViewController.h
//  MapTest04
//
//  Created by Mark Brautigam on 4/16/14.
//  Copyright (c) 2014 Mark Brautigam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Map.h"

@interface MapViewController : UIViewController

@property (nonatomic, retain) Map *map;
@property (weak, nonatomic) IBOutlet UILabel *mapCaption;
@property (weak, nonatomic) IBOutlet UIImageView *mapImage;

@end

