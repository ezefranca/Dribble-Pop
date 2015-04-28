//
//  MCRequesters.m
//  HackathonMaster
//
//  Created by Ezequiel on 11/04/15.
//  Copyright (c) 2015 Hackathon. All rights reserved.
//

#import "Requester.h"

@interface Requester()
@property (strong, nonatomic) UIView *overlayView;
@property (strong, nonatomic) AFHTTPClient *mappinglessClient;

- (void)showLoadingOverlayView;
- (void)removeLoadingOverlayView;
@end

@implementation Requester

- (void)showLoadingOverlayView
{
    if(!self.overlayView) {
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        self.overlayView = [[UIView alloc] initWithFrame:screenRect];
        
        [self.overlayView setBackgroundColor:[UIColor clearColor]];
        
        UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        
        UITabBarController *tabBarController = [UIApplication sharedApplication].keyWindow.window.rootViewController.tabBarController;
        UINavigationController *nav = [UIApplication sharedApplication].keyWindow.window.rootViewController.navigationController;
        
        if (IS_IPHONE) {
            float navigationBarHeight = [[nav navigationBar] frame].size.height;
            float tabBarHeight = [[tabBarController tabBar] frame].size.height;
            
            [spinner setCenter:CGPointMake(self.overlayView.frame.size.width / 2.0, (self.overlayView.frame.size.height  - navigationBarHeight - tabBarHeight) / 2.0)];
            [spinner startAnimating];
            
        }else{
            
            float navigationBarHeight = [[nav navigationBar] frame].size.height;
            float tabBarHeight = [[tabBarController tabBar] frame].size.height;
            
            [spinner setCenter:CGPointMake(self.overlayView.frame.size.width / 2.0 , (self.overlayView.frame.size.height  - navigationBarHeight - tabBarHeight) / 2.0 + 108)];
            [spinner startAnimating];
        }
        
        
        [self.overlayView addSubview:spinner];
    }
    
    [[UIApplication sharedApplication].keyWindow addSubview:self.overlayView];
}


- (void)removeLoadingOverlayView
{
    if (self.overlayView) {
        [self.overlayView removeFromSuperview];
    }
}

#pragma mark - Requester Base Methods
-(id)init {
    
    NSString *URL = [NSString stringWithFormat:@"https://%@", WEBSERVICE_API];
    
    if ([RKObjectManager sharedManager] == nil) {
        _manager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:URL]];
        [RKObjectManager setSharedManager: _manager];
    } else {
        _manager = [RKObjectManager sharedManager];
    }
    
    _manager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:URL]];
    [RKObjectManager setSharedManager: _manager];
    [RKMIMETypeSerialization registerClass:[RKNSJSONSerialization class] forMIMEType:@"text/javascript"];
    [RKMIMETypeSerialization registerClass:[RKNSJSONSerialization class] forMIMEType:@"application/json"];
    
    return self;
}

-(void) performRequestWithoutMappingWithParams:(NSDictionary *) params method:(RKRequestMethod)method path:(NSString *)path withSuccesBlock:(void(^)(id responseObject)) successBlock andErrorBlock:(void(^)(NSError * error)) errorBlock{
    
    NSString *methodName = @"";
    
    switch (method) {
        case RKRequestMethodPOST:
            methodName = @"POST";
            break;
        case RKRequestMethodGET:
            methodName = @"GET";
            break;
        case RKRequestMethodPUT:
            methodName = @"PUT";
            break;
        case RKRequestMethodDELETE:
            methodName = @"DELETE";
            break;
        default:
            methodName = @"GET";
            break;
    }
    __block Requester *innerSelf = self;
    NSURLRequest *request = [self.mappinglessClient requestWithMethod:methodName path:path parameters:params];
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (successBlock) {
            successBlock(responseObject);
        }
        [innerSelf removeLoadingOverlayView];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (errorBlock) {
            errorBlock(error);
        }
        [innerSelf removeLoadingOverlayView];
    }];
    
    [self showLoadingOverlayView];
    [self.mappinglessClient enqueueHTTPRequestOperation:operation];
}

-(void) addOperationToQueue:(RKObjectRequestOperation *) operation {
    [_manager enqueueObjectRequestOperation:operation];
    [self showLoadingOverlayView];
}

-(RKObjectRequestOperation *) createRequestOperationWithResponseDescriptors:(NSArray *) responseDescriptors andRequest:(NSURLRequest *)request successBlock:(void (^)(NSArray *results))successBlock andErrorBlock:(void (^)(NSError *error))errorBlock; {
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:responseDescriptors];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        if (successBlock) {
            successBlock([mappingResult array]);
        }
        [self removeLoadingOverlayView];
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        
        if (errorBlock) {
            errorBlock(error);
        }
        [self removeLoadingOverlayView];
    }];
    
    return operation;
}

-(NSURLRequest *)createRequestWithObject:(id)object HTTPMethod:(RKRequestMethod)method path:(NSString *)path parameters:(NSDictionary *)parameters {
    NSURLRequest *request = [_manager requestWithObject:object method:method path:path parameters:parameters];
    return request;
}
@end