//
//  ShotsRequester.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "ShotsRequester.h"
#import "Shots.h"

@implementation ShotsRequester

-(void)getPopularPostsWithSuccessBlock:(void (^)(NSArray *results))successBlock errorBlock:(void (^)(NSError *error))errorBlock {
    
    RKResponseDescriptor *responseDescriptor =  [RKResponseDescriptor responseDescriptorWithMapping:[Shots mappingForEntity]
                                                                                             method:RKRequestMethodGET
                                                                                        pathPattern:nil
                                                                                            keyPath:nil
                                                                                        statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    NSURLRequest *request = [self createRequestWithObject:self HTTPMethod:RKRequestMethodGET path:DRIBBLE_URL parameters:nil];
    
    RKObjectRequestOperation *op = [self createRequestOperationWithResponseDescriptors:@[responseDescriptor] andRequest:request successBlock:^(NSArray *results) {
        if (successBlock) {
            successBlock(results);
        }
    } andErrorBlock:^(NSError *error) {
        if (errorBlock) {
            errorBlock(error);
        }
    }];
    
    [self addOperationToQueue:op];
    
}

@end
