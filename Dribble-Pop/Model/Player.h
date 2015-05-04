//
//  Player.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) int playerID;
@property (nonatomic, strong) NSString* playerName;
@property (nonatomic, strong) NSString* playerUserName;
@property (nonatomic, strong) NSString* playerURL;
@property (nonatomic, strong) NSString* playerAvatar;
@property (nonatomic, strong) NSString* playerBio;
@property (nonatomic, strong) NSString* playerLocation;
@property (nonatomic, strong) NSArray*  playerLinks;

@end