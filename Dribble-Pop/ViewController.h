//
//  ViewController.h
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShotsRequester.h"
#import "DetalhesViewController.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgShot;
- (IBAction)imageTouch:(id)sender;

@end

