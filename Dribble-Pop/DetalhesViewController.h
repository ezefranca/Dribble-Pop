//
//  DetalhesViewController.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/30/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface DetalhesViewController : UIViewController

#define NOTICATION_DETALHES_DRIBBLE @"detalhesDribble"
@property (strong, nonatomic) IBOutlet UIImageView *detalhesImage;
@property (strong, nonatomic) IBOutlet UITextView *detalhesDescription;
@property (strong, nonatomic) IBOutlet UIImageView *playerAvatar;
@property (strong, nonatomic) IBOutlet UILabel *playerName;
@property (strong, nonatomic) IBOutlet UILabel *playerUsername;

@end
