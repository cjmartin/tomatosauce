//
//  Movie.m
//  tomatosauce
//
//  Created by Chris Martin on 3/18/14.
//  Copyright (c) 2014 Chris Martin. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.synopsis = dictionary[@"synopsis"];
        self.posterUrl = ((NSDictionary *)dictionary[@"posters"])[@"original"];
        self.posterThumbUrl = ((NSDictionary *)dictionary[@"posters"])[@"detailed"];
    }
    
    return self;
}

+ (NSArray *)moviesWithArray:(NSArray *)array {
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dictionary in array) {
        Movie *movie = [[Movie alloc] initWithDictionary:dictionary];
        [movies addObject:movie];
    }
    
    return movies;
}

@end
