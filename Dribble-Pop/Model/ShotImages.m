//
//  ShotImages.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "ShotImages.h"


@implementation ShotImages

+ (instancetype)objectiveWithType:(ShotImages*)type {
    ShotImages *img = ShotImages.new;
   
//    img.imgNormal = @(type.imgNormal);
//    img.imgHidp = @(type.imgHidp);
//    img.imgTeaser = @(type.imgTeaser);
    return img;
}

@end