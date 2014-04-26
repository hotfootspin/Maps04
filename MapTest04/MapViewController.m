//
//  MapViewController.m
//  MapTest04
//
//  Created by Mark Brautigam on 4/16/14.
//  Copyright (c) 2014 Mark Brautigam. All rights reserved.
//

#import "MapViewController.h"
#import "MoreTableViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize map;
@synthesize mapCaption;
@synthesize mapImage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *imgPath =  [[NSBundle mainBundle] pathForResource:map.picture ofType:@"png"];

    /*
    NSLog (@"Image 2");
    NSLog (@"%@", map.picture);
    NSLog (@"%@", map.company);
    NSLog (@"%@", map.title);
    NSLog (@"%@", map.year);
    NSLog (@"%@", imgPath);
    */
    
    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
    // NSLog (@"Image 3");
    [mapImage setImage:img];
    // NSLog (@"Image 4");
    
    [mapCaption setText:map.description];
    // [mapCaption setText:map.subtitle];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    MoreTableViewController *next = [segue destinationViewController];

    // Pass the selected object to the new view controller.
    next.map = map;
}

@end
