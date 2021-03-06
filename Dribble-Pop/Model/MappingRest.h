//
//  MappingRest.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RKObjectMapping.h"
@protocol MappingRest <NSObject>
@required
+ (RKObjectMapping *) mappingForEntity;
@optional
- (NSDictionary *)parametersForEntity;
@end