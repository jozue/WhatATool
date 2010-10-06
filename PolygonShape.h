//
//  PolygonShape.h
//  WhatATool
//
//  Created by Josue Roman on 9/29/10.
//  Copyright 2010 UT Austin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	//int numberOfSides;
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly)float angleInDegrees;
@property (readonly)float angleInRadians;
@property (readonly) NSString * name;


- (void) setNumberOfSides: (int) num;
- (void) setMinimumNumberOfSides: (int) num;
- (void) setMaximumNumberOfSides: (int) num;

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;

@end
