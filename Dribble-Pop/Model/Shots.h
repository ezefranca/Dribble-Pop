//
//  Shots.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "ShotImages.h"
#import "Player.h"

@interface Shots : NSObject

@property (nonatomic, strong) NSNumber* shotID;
@property (nonatomic, strong) NSString* shotTitle;
@property (nonatomic, strong) NSString* shotDescription;
@property (nonatomic, strong) NSNumber* shotWidth;
@property (nonatomic, strong) NSNumber* shotHeight;
@property (nonatomic, strong) ShotImages *images;
@property (nonatomic, strong) NSNumber* shotViewsCount;
@property (nonatomic, strong) NSNumber* shotLikesCount;
@property (nonatomic, strong) NSNumber* shotCommentsCount;
@property (nonatomic, strong) NSNumber* shotAttachmentsCount;
@property (nonatomic, strong) NSNumber* shotReboundsCount;
@property (nonatomic, strong) NSNumber* shotBucketsCount;
@property (nonatomic, strong) NSString* shotCreatedDate;
@property (nonatomic, strong) NSString* shotUpdateDate;
@property (nonatomic, strong) NSString* shotURLHtm;
@property (nonatomic, strong) NSString* shotURLAttachments;
@property (nonatomic, strong) NSString* shotURLBuckets;
@property (nonatomic, strong) NSString* shotURLComments;
@property (nonatomic, strong) NSString* shotURLLikes;
@property (nonatomic, strong) NSString* shotURLProjects;
@property (nonatomic, strong) NSString* shotURLRebounds;
@property (nonatomic, strong) NSMutableArray* shotTags;
@property (nonatomic, strong) Player* shotPlayer;
@property (nonatomic, strong)









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
