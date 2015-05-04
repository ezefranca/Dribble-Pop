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
#import "ShootCell.h"

#define NOTICATION_DETALHES_DRIBBLE @"detalhesDribble"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

