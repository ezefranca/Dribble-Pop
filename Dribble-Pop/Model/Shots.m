//
//  Shots.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "Shots.h"
#import "ShotImages.h"

@implementation Shots

+ (RKObjectMapping *) mappingForEntity {
    RKObjectMapping *postMapping = [RKObjectMapping mappingForClass:[Shots class]];
    [postMapping addAttributeMappingsFromDictionary:@{
                                                      @"id"  : @"shotID",
                                                      @"title"  : @"shotTitle",
                                                      @"description"  : @"shotDescription",
                                                      @"width": @"shotWidth",
                                                      @"height": @"shotHeight",
                                                     // @"images": @"images",
                                                      @"views_count": @"shotViewsCount",
                                                      @"likes_count": @"shotLikesCount",
                                                      @"comments_count" : @"shotCommentsCount",
                                                      @"attachments_count" : @"shotAttachmentsCount",
                                                      @"rebounds_count" : @"shotReboundsCount",
                                                      @"rebound_source_id" : @"shotReboundID",
                                                      @"buckets_count": @"shotBucketsCount",
                                                      @"created_at" : @"shotCreatedDate",
                                                      @"updated_at" : @"shotUpdateDate",
                                                      @"html_url" : @"shotURLHtm",
                                                      @"attachments_url" : @"shotURLAttachments",
                                                      @"buckets_url" : @"shotURLBuckets",
                                                      @"comments_url" : @"shotURLComments",
                                                      @"likes_url" : @"shotURLLikes",
                                                      @"projects_url" : @"shotURLProjects" ,
                                                      @"rebounds_url" : @"shotURLRebounds",
                                                      @"tags" : @"shotTags",
//                                                      @"user" : @"shotPlayer",
                                                      @"team" : @"shotPlayer"
                                                      }];
    
   [postMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"images" toKeyPath:@"images" withMapping:[[self class] images]]];
    return postMapping;
}

+ (RKObjectMapping *)images {
    
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[ShotImages class]];
    
    [mapping addAttributeMappingsFromDictionary:@{@"hidpi"  : @"imgHidp",
                                                  @"normal" : @"imgNormal",
                                                  @"teaser" : @"imgTeaser"  }];
    
    return mapping;
}

@end
