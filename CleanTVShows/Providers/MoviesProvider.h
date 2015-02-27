//
//  MoviesProvider.h
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "BaseProvider.h"


typedef void(^CompletionBlock)(id data);
typedef void(^ErrorBlock)(id data, NSError *error);

@interface MoviesProvider : BaseProvider

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

- (void)loadMoviesWithSucces:(CompletionBlock)succesBlock andError:(ErrorBlock)errorBlock;

@end
