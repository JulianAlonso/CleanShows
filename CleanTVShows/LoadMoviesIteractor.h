//
//  LoadMoviesList.h
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MoviesProvider;

typedef void(^CompletionBlock)(id data);
typedef void(^ErrorBlock)(id data, NSError *error);

@interface LoadMoviesIteractor : NSObject

@property (nonatomic, strong) MoviesProvider *moviesProvider;

- (void)loadMoviesWithCompletion:(CompletionBlock)completionBlock error:(ErrorBlock)errorBlock;

@end
