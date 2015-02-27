//
//  MoviesProvider.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "MoviesProvider.h"

@implementation MoviesProvider

- (void)loadShowsWithSucces:(CompletionBlock)succesBlock andError:(ErrorBlock)errorBlock
{
    [self.requestManager GET:@"/movies/popular" params:nil completion:^(id data) {
        succesBlock(data);
    } error:^(id data, NSError *error) {
        errorBlock(data, error);
    }];
}

@end
