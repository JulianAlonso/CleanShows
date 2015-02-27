//
//  AFNRequestManager.m
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import "AFNRequestManager.h"
#import <AFNetworking/AFNetworking.h>


@implementation AFNRequestManager

@synthesize basePath = _basePath;
@synthesize defaultParams = _defaultParams;

- (void)GET:(NSString *)endpoint params:(NSDictionary *)params completion:(CompletionBlock)completionBlock error:(ErrorBlock)errorBlock
{
    AFHTTPRequestOperationManager *requestManager = [AFHTTPRequestOperationManager manager];
    
    NSString *fullEndPoint = [self.basePath stringByAppendingPathComponent:endpoint];
    
    NSMutableDictionary *fullParams = [self.defaultParams mutableCopy];
    
    if (params)
    {
        [fullParams addEntriesFromDictionary:params];
    }
    
    [requestManager GET:fullEndPoint parameters:fullParams success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completionBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        errorBlock(nil, error);
    }];
}

@end
