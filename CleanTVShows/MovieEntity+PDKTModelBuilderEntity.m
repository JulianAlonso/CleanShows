//
//  MovieEntity+PDKTModelBuilderEntity.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "MovieEntity+PDKTModelBuilderEntity.h"
#import "PDKTDataTransformers.h"


@implementation MovieEntity (PDKTModelBuilderEntity)

+ (NSDictionary *)propertiesBindings
{
    return @{
             @"id" : @"movieId",
             @"title" : @"movieTitle",
             @"release_date" : @"movieReleaseDate",
             @"poster_path" : @"moviePosterUrl"
             };
}

+ (NSDictionary *)propertiesTypeTransformers
{
    return @{};
}

+ (NSDictionary *)customDataDictionaryWithSourceDataDictionary:(NSDictionary *)dictionary
{
    NSMutableDictionary *customDictionary = [dictionary mutableCopy];
    
    NSString *baseImageUrl = @"http://image.tmdb.org/t/p/w500";
    
    [customDictionary setObject:[baseImageUrl stringByAppendingString:customDictionary[@"poster_path"]] forKey:@"poster_path"];
    
    return customDictionary;
}

@end
