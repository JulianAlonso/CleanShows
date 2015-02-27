//
//  MoviesProvider.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "MoviesProvider.h"
#import "MovieEntity.h"
#import "MovieEntity+PDKTModelBuilderEntity.h"

@implementation MoviesProvider

- (void)loadMoviesWithSucces:(CompletionBlock)succesBlock andError:(ErrorBlock)errorBlock
{
    [self.requestManager GET:@"/movies/popular" params:nil completion:^(id data) {
        
        NSMutableArray *moviesResult = [NSMutableArray array];
        
        for (NSDictionary *dic in [data valueForKey:@"results"])
        {
            MovieEntity *movie = [MovieEntity updateOrInsertIntoManagedObjectContext:self.managedObjectContext withDictionary:dic];
            
            [moviesResult addObject:movie];
        }
        
        succesBlock(moviesResult);
    } error:^(id data, NSError *error) {
        errorBlock(data, error);
    }];
}

@end
