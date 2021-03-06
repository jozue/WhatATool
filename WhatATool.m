
#import <Foundation/Foundation.h>
#import "PolygonShape.h"


void PrintPathInfo() {
	NSLog(@"//Section 1//");
	
	NSString *path = @"~";
	NSString * expand = [path stringByExpandingTildeInPath];
	NSLog(@"My home folder is at %@", expand);
	NSArray * comp = [expand pathComponents];
	NSEnumerator *enu = [comp objectEnumerator];
	
	id item;
	
	while (item = [enu nextObject])
	{
		NSLog(@"%@",item);
	}
	
	//comment
	
}

void PrintProcessInfo() {
	NSLog(@"\n");
	NSLog(@"//Section 2//");
	NSProcessInfo *info = [NSProcessInfo processInfo];
	NSLog(@"Process Name: %@  Process ID: %d ", [info processName] , [info processIdentifier]);
}

void PrintBookmarkInfo(){
	NSLog(@"\n");
	NSLog(@"//Section 3//");
	
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
	
	[dict setObject: [NSURL URLWithString: @"http://www.stanford.edu"]	 forKey:@"Stanford University" ];
	[dict setObject: [NSURL URLWithString:@"http://www.apple.com"		] forKey:@"Apple"  ];
	[dict setObject: [NSURL URLWithString:@"http://cs193p.stanford.edu" ]forKey:@"CS193P"];
	[dict setObject: [NSURL URLWithString:@"http://itunes.stanford.edu"] forKey:@"Stanford on iTunes U" ];
	[dict setObject: [NSURL URLWithString:@"http://stanfordshop.com"	 ]forKey: @"Stanford Mall" ];
	
	NSEnumerator *enu = [dict keyEnumerator];
	
	
	id item;

	while (item = [enu nextObject])
	{
		if( [item hasPrefix:@"Stanford"] )
			NSLog(@"Key: %@  URL:%@ ", item, [dict valueForKey:item]);
	}
	
}

void PrintIntrospectionInfo() {
	NSLog(@"\n");
	NSLog(@"//Section 4//");
	
	NSMutableArray *arr = [[NSMutableArray alloc] init];
	[arr addObject:@"ASDffsdf"];
	[arr addObject: [NSURL URLWithString:@"http://stanfordshop.com"] ];
	[arr addObject: [NSProcessInfo processInfo] ];
	[arr addObject: [NSMutableDictionary dictionaryWithCapacity:5] ];
	
	NSEnumerator *enu = [arr objectEnumerator];
	id item;
	while (item = [enu nextObject])
	{
		NSLog(@"Class name: %@", [item class]);
		NSLog(@"Is Member of NSString: %@", [item isMemberOfClass:[NSString class]]?@"YES":@"NO" );
		NSLog(@"Is Kind of NSString: %@", [item isKindOfClass:[NSString class]]?@"YES":@"NO" );
		NSLog(@"Responds to lowercaseString: %@", [item respondsToSelector:@selector(lowercaseString)]?@"YES":@"NO"  );
		
		if ([item respondsToSelector:@selector(lowercaseString)]) {
			NSLog(@"lowercaseString is: %@", [item lowercaseString] );
		}
		NSLog(@"--------------------------------");
	}
	
	
}


void PrintPolygonInfo()
{
	
	NSLog(@"\n");
	NSLog(@"//Section 6//");
	
	NSMutableArray * list = [[NSMutableArray alloc]init];
	
	PolygonShape *poly = [[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7];
	[list addObject: poly];
	NSLog(@"%@", [poly description]);
	
	PolygonShape *poly2 =[[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9];
	[list addObject: poly2];
	NSLog(@"%@", [poly2 description]);
	
	PolygonShape *poly3 =[[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12];
	[list addObject: poly3];
	NSLog(@"%@", [poly3 description]);
	
	NSEnumerator *enu = [list objectEnumerator];
	id item;
	while (item = [enu nextObject])
	{
		[item  setNumberOfSides:10];
	}
	
	[poly release];
	[poly2 release];
	[poly3 release];
	[list release];
	
	
	
}
 

int main (int argc, const char * argv[]) {
    
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	PrintPathInfo(); 
	PrintProcessInfo(); 
	PrintBookmarkInfo(); 
	PrintIntrospectionInfo();
	
	PrintPolygonInfo();
	
[pool release]; 
	return 0;
	
}

