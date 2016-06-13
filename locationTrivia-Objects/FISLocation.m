//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Max Tkach on 6/13/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"
#import "FISTrivium.h"

@implementation FISLocation

- (instancetype) init {
    return [self initWithName:@"" latitude:0 longitude:0];
}

- (instancetype) initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL) hasValidData {
    if ((self.name.length > 0) &&
        (fabs(self.latitude) < 90) &&
        (fabs(self.longitude) < 180)) {
        return true;
    }
    return false;
}

- (NSString *) stringByTruncatingNameToLength:(NSUInteger)length {
    if (self.name.length < length) {
        return self.name;
    }
    return [self.name substringToIndex:length];
}

- (FISTrivium *) triviumWithMostLikes {
    if (!self.trivia.count) {
        return nil;
    }
    FISTrivium *mostLikesTrivium = [[FISTrivium alloc] init];
    for (FISTrivium *trivium in self.trivia) {
        if (trivium.likes > mostLikesTrivium.likes) {
            mostLikesTrivium = trivium;
        }
    }
    return mostLikesTrivium;
}

@end
