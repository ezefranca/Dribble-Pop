//
//  Shots.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shots : NSObject

@property (nonatomic, strong) NSNumber* shotID;
@property (nonatomic, strong) NSString* shotTitle;
@property (nonatomic, strong) NSString* shotDescription;
@property (nonatomic, strong) NSNumber* shotHeight;
@property (nonatomic, strong) NSNumber* shotWidth;
@property (nonatomic, strong) NSNumber* shotLikesCount;
@property (nonatomic, strong) NSNumber* shotCommentsCount;
@property (nonatomic, strong) NSNumber* shotReboundsCount;
@property (nonatomic, strong) NSString* shotURL;
@property (nonatomic, strong) NSString* shotURLshort;
@property (nonatomic, strong) NSNumber* shotViewsCount;
@property (nonatomic, strong) NSNumber* shotReboundID;
@property (nonatomic, strong) NSString* shotImgURL;
@property (nonatomic, strong) NSString* shotImgTeaserURL;
@property (nonatomic, strong) NSMutableArray* players;

//"id": 2039367,
//"title": "2015 Diamond Kings Baseball - Packaging",
//"description": "<p>Box and overwrap designs for 2015 Diamond Kings Baseball featuring the Bambino.</p>",
//"height": 300,
//"width": 400,
//"likes_count": 5,
//"comments_count": 1,
//"rebounds_count": 0,
//"url": "http://dribbble.com/shots/2039367-2015-Diamond-Kings-Baseball-Packaging",
//"short_url": "http://drbl.in/oAkF",
//"views_count": 8,
//"rebound_source_id": null,
//"image_url": "https://d13yacurqjgara.cloudfront.net/users/273942/screenshots/2039367/diamonkingspackaging.jpg",
//"image_teaser_url": "https://d13yacurqjgara.cloudfront.net/users/273942/screenshots/2039367/diamonkingspackaging_teaser.jpg",
//"player": {

@end
