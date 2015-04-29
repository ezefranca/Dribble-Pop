//
//  ShotImages.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "ShotImages.h"


@implementation ShotImages

+ (RKObjectMapping *) mappingForEntity {
    RKObjectMapping *postMapping = [RKObjectMapping mappingForClass:[ShotImages class]];
    [postMapping addAttributeMappingsFromDictionary:@{
                                                      @"hidpi"  : @"imgHidp",
                                                      @"normal" : @"imgNormal",
                                                      @"teaser" : @"imgTeaser"                                                      }];
    return postMapping;
}

@end
