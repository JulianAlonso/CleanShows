//
//  RequestManagerFactory.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "RequestManagerFactory.h"
#import "AFNRequestManager.h"

@interface RequestManagerFactory ()

@end

@implementation RequestManagerFactory

+ (id <RequestManager>) requestManager
{
    return [[AFNRequestManager alloc] init];;
}


@end
