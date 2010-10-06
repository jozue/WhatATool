//
//  PolygonShape.m
//  WhatATool
//
//  Created by Josue Roman on 9/29/10.
//  Copyright 2010 UT Austin. All rights reserved.
//

#import "PolygonShape.h"
#include <math.h>

@implementation PolygonShape


@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

- (NSString *) name
{
	
	if(numberOfSides == 3)
		return @"Triangle";
	if(numberOfSides == 4)
		return @"Square";
	if(numberOfSides == 5)
		return @"Pentagon";
	if(numberOfSides == 6)
		return @"Hexagon";
	if(numberOfSides == 7)
		return @"Heptagon";
	if(numberOfSides == 8)
		return @"Octagon";
	if(numberOfSides == 9)
		return @"Nonagon";
	if(numberOfSides == 10)
		return @"Decagon";
	if(numberOfSides == 11)
		return @"Hendecagon";
	if(numberOfSides == 12)
		return @"Dodecagon";
	else
		return @"";
}

-(NSString *) description
{
	return [NSString stringWithFormat: @"Hello I am a %d-sided polygon (aka a %@) with angles of %f degrees (%f radians).", 
			self.numberOfSides, [self name], self.angleInDegrees, self.angleInRadians];
}

- (void) setNumberOfSides: (int) num
{
	if(minimumNumberOfSides <= num && maximumNumberOfSides >= num)
	{
		numberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is less than 2 or greater than 12.", num);
	}

}

- (void) setMinimumNumberOfSides:(int) num
{
	if(num > 2)
	{
		minimumNumberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is less than 2.", num);
	}
}


- (void) setMaximumNumberOfSides:(int) num
{
	if(num <= 12)
	{
		maximumNumberOfSides = num;
	}
	else {
		NSLog(@"Invalid number of sides: %d is greater than 12.", num);
	}
}

-(float)angleInDegrees
{
	return (180 * (numberOfSides - 2) / numberOfSides);
}

-(float)angleInRadians
{
	return (M_PI * (numberOfSides - 2) / numberOfSides);
}

-(id) init
{
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:10];
	
}

- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max
{
	if( self = [super init] )
	{
		[self setMinimumNumberOfSides:min];
		[self setMaximumNumberOfSides:max];
		
		[self setNumberOfSides:sides];
	}
	return self;
}

-(void) dealloc
{
	NSLog(@"Calling dealloc");
	[super dealloc];
}

@end
