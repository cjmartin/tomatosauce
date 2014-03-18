//
//  Movie.h
//  tomatosauce
//
//  Created by Chris Martin on 3/18/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *synopsis;
@property (strong, nonatomic) NSString *posterUrl;
@property (strong, nonatomic) NSString *posterThumbUrl;

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (NSArray *)moviesWithArray:(NSArray *)array;

@end
