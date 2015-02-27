//
//  RequestManager.h
//  CleanTVShows
//
//  Created by Julian Alonso on 27/2/15.
//  Copyright (c) 2015 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionBlock)(id data);
typedef void(^ErrorBlock)(id data, NSError *error);

@protocol RequestManager <NSObject>

@property (nonatomic, copy) NSString *basePath;
@property (nonatomic, copy) NSDictionary *defaultParams;

- (void)GET:(NSString *)endpoint params:(NSDictionary *)params completion:(CompletionBlock)completionBlock error:(ErrorBlock)errorBlock;

@end
