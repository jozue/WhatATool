//
//  PolygonShape.m
//  WhatATool
//
//  Created by Josue Roman on 9/29/10.
//  Copyright 2010 UT Austin. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape


@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;
@synthesize angleInDegrees;
@synthesize angleInRadians;
@synthesize name;

- (void) setNumberOfSides: (int) num
{
	if(minimumNumberOfSides < num && maximumNumberOfSides > num)
	{
		numberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is less than 2 or greater than 12.", num);
	}

}

- (void) setMinimumNumberOfSides:(int) num
{
	if(minimumNumberOfSides > 2)
	{
		minimumNumberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is less than 2.", num);
	}
}


- (void) setMaximumNumberOfSides:(int) num
{
	if(maximumNumberOfSides <= 12)
	{
		maximumNumberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is greater than 12.", num);
	}
}

@end
