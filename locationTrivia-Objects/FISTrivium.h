//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Max Tkach on 6/13/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (nonatomic) NSUInteger likes;

@property (strong, nonatomic) NSString *content;

- (instancetype) init;

- (instancetype) initWithContent:(NSString *)content likes:(NSUInteger)likes;



@end
