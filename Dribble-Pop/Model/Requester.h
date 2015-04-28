//
//  Requester.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

#define WEBSERVICE_API @"http://api.dribbble.com/shots/"
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)


@interface Requester : NSObject
@property(strong, nonatomic, readonly) RKObjectManager *manager;
-(void) addOperationToQueue:(RKObjectRequestOperation *) operation;

-(RKObjectRequestOperation *) createRequestOperationWithResponseDescriptors:(NSArray *) responseDescriptors andRequest:(NSURLRequest *)request successBlock:(void (^)(NSArray *results))successBlock andErrorBlock:(void (^)(NSError *error))errorBlock;

-(NSURLRequest *)createRequestWithObject:(id) object HTTPMethod:(RKRequestMethod) method path:(NSString *)path parameters:(NSDictionary *) parameters;

-(void)performRequestWithoutMappingWithParams:(NSDictionary *) params method:(RKRequestMethod)method path:(NSString *)path withSuccesBlock:(void(^)(id responseObject)) successBlock andErrorBlock:(void(^)(NSError * error)) errorBlock;



@end
