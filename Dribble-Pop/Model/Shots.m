//
//  Shots.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "Shots.h"

@implementation Shots

+ (RKObjectMapping *) mappingForEntity {
    RKObjectMapping *postMapping = [RKObjectMapping mappingForClass:[Shots class]];
    [postMapping addAttributeMappingsFromDictionary:@{
                                                      @"id"  : @"shotID",
                                                      @"title"  : @"shotTitle",
                                                      @"description"  : @"shotDescription",
                                                      @"height": @"shotHeight",
                                                      @"likes_count": @"shotWidth",
                                                      @"UsuCodigo": @"shotLikesCount",
                                                      @"comments_count": @"shotCommentsCount",
                                                      @"rebounds_count": @"shotReboundsCount",
                                                      
                                                      @"url" : @"shotURL",
                                                      @"short_url" : @"shotURLshort",
                                                      @"views_count" : @"shotViewsCount",
                                                      @"rebound_source_id" : @"shotReboundID",
                                                      @"image_url": @"shotImgURL",
                                                      @"image_teaser_url" : @"shotImgTeaserURL",
                                                      @"player" : @"players",
                                                      
                                                      
                                                      @"attachments_count"
                                                      @"buckets_count"
                                                      @"created_at"
                                                      @"updated_at"
                                                      @"html_url"
                                                      @"attachments_url"
                                                      @"buckets_url" :
                                                      @"comments_url" :
                                                      @"likes_url" :
                                                      @"projects_url" :
                                                      @"rebounds_url" : "@"shotReboundUrl",
                                                      @"tags": @"",
                                                      
                                                      }];
    return postMapping;
}

@end


//id	:	2038245

//title	:	Paris nightlife
//
//description	:	<p>This is a series of illustration working on a new project, where all cities have their own unique symbols.</p>\n\n<p>This will be uploaded to <a href=\"http://beta.uihaus.com/\" target=\"_blank\">http://beta.uihaus.com/</a> soon so you can see all the inside screens.</p>\n\n<p>See in 2X or Attachment for details.</p>\n\n<p>Press L for some love.</p>\n\n<p>Feedback much appreciated.</p>
//
//width	:	400
//
//height	:	300
//
//images		{3}
//
//views_count	:	3997
//
//likes_count	:	406
//
//comments_count	:	21
//
//attachments_count	:	1
//
//rebounds_count	:	0
//
//buckets_count	:	40
//
//created_at	:	2015-04-27T19:58:37Z
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
