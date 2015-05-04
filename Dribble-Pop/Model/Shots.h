//
//  Shots.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "MappingRest.h"
#import "ShotImages.h"
#import "Player.h"
#import "Team.h"
#import "Tags.h"

@interface Shots : NSObject <MappingRest>

@property (nonatomic, assign) int shotID;
@property (nonatomic, strong) NSString* shotTitle;
@property (nonatomic, strong) NSString* shotDescription;
@property (nonatomic, assign) int shotWidth;
@property (nonatomic, assign) int shotHeight;
@property (nonatomic, strong) ShotImages *images;
@property (nonatomic, assign) int shotViewsCount;
@property (nonatomic, assign) int shotLikesCount;
@property (nonatomic, assign) int shotCommentsCount;
@property (nonatomic, assign) int shotAttachmentsCount;
@property (nonatomic, assign) int shotReboundsCount;
@property (nonatomic, assign) int shotBucketsCount;
@property (nonatomic, strong) NSString* shotCreatedDate;
@property (nonatomic, strong) NSString* shotUpdateDate;
@property (nonatomic, strong) NSString* shotURLHtm;
@property (nonatomic, strong) NSString* shotURLAttachments;
@property (nonatomic, strong) NSString* shotURLBuckets;
@property (nonatomic, strong) NSString* shotURLComments;
@property (nonatomic, strong) NSString* shotURLLikes;
@property (nonatomic, strong) NSString* shotURLProjects;
@property (nonatomic, strong) NSString* shotURLRebounds;
@property (nonatomic, strong) Tags* shotTags;
@property (nonatomic, strong) Player* user;
@property (nonatomic, strong) Team* shotTeam;









//
//updated_at	:	2015-04-27T20:00:44Z
//
//html_url	:	https://dribbble.com/shots/2038245-Paris-nightlife
//
//attachments_url	:	https://api.dribbble.com/v1/shots/2038245/attachments
//
//buckets_url	:	https://api.dribbble.com/v1/shots/2038245/buckets
//
//comments_url	:	https://api.dribbble.com/v1/shots/2038245/comments
//
//likes_url	:	https://api.dribbble.com/v1/shots/2038245/likes
//
//projects_url	:	https://api.dribbble.com/v1/shots/2038245/projects
//
//rebounds_url	:	https://api.dribbble.com/v1/shots/2038245/rebounds
//
//tags		[9]

@end
