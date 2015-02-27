//
//  MovieEntity.h
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MovieEntity : NSManagedObject

@property (nonatomic, retain) NSString * movieId;
@property (nonatomic, retain) NSString * movieTitle;
@property (nonatomic, retain) NSString * movieReleaseDate;
@property (nonatomic, retain) NSString * moviePosterUrl;

@end
