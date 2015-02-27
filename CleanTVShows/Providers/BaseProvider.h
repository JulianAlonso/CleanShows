//
//  BaseProvider.h
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestManager.h"

@interface BaseProvider : NSObject

@property (nonatomic, strong) id<RequestManager> requestManager;

@end
