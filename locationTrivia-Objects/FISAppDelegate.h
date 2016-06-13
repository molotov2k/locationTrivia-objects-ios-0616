//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@class FISLocation;

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSArray *locations;

- (NSArray *) allLocationNames;

- (FISLocation *) locationNamed:(NSString *)locationName;

- (NSArray *) locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin;

@end
