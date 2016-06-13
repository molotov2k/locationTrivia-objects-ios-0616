//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISTrivium.h"
#import "FISLocation.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (NSArray *) allLocationNames {
    NSMutableArray *locationNames = [[NSMutableArray alloc] init];
    for (FISLocation *location in self.locations) {
        [locationNames addObject:location.name];
    }
    return locationNames;
}

- (FISLocation *) locationNamed:(NSString *)locationName {
    for (FISLocation *location in self.locations) {
        if ([location.name isEqualToString:locationName]) {
            return location;
        }
    }
    return nil;
}

- (NSArray *) locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    NSMutableArray *locationsNear = [[NSMutableArray alloc] init];
    for (FISLocation *location in self.locations) {
        if ((fabs(location.latitude - latitude) <= margin) && (abs(location.longitude - longitude <= margin))) {
            [locationsNear addObject:location];
        }
    }
    return locationsNear;
}






@end
