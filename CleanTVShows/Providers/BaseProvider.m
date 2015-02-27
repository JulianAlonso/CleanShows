//
//  BaseProvider.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "BaseProvider.h"
#import "RequestManagerFactory.h"

@implementation BaseProvider

- (id<RequestManager>)requestManager
{
    if (!_requestManager)
    {
        _requestManager = [RequestManagerFactory requestManager];
        _requestManager.basePath = @"https://api.themoviedb.org/3";
        _requestManager.defaultParams = @{@"api_key" : @"065b3e195e4a9d2ab69d6a9301cd6201"};
    }
    
    return _requestManager;
}

@end
