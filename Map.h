//
//  Map.h
//  MapTest04
//
//  Created by Mark Brautigam on 4/16/14.
//  Copyright (c) 2014 Mark Brautigam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Map : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* subtitle;
@property (nonatomic, copy) NSString* year;
@property (nonatomic, copy) NSString* company;
@property (nonatomic, copy) NSString* picture;
@property (nonatomic, copy) NSString* description;
@property (nonatomic, assign) double latitude;
@property (nonatomic, assign) double longitude;

@end
