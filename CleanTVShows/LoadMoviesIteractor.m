//
//  LoadMoviesList.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "LoadMoviesIteractor.h"
#import "MoviesProvider.h"

@implementation LoadMoviesIteractor

- (void)loadMoviesWithCompletion:(CompletionBlock)completionBlock error:(ErrorBlock)errorBlock
{
    [self.moviesProvider loadMoviesWithSucces:^(id data) {
        completionBlock(data);
    } andError:^(id data, NSError *error) {
        errorBlock(data, error);
    }];
}

- (MoviesProvider *)moviesProvider
{
    if (!_moviesProvider)
    {
        _moviesProvider = [[MoviesProvider alloc] init];
    }
    return _moviesProvider;
}

@end
