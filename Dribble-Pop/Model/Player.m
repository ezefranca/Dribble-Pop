//
//  Player.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "Player.h"

@implementation Player

+ (instancetype)objectiveWithType:(Player*)type {
    Player *ply = Player.new;
    return ply;
}

@end