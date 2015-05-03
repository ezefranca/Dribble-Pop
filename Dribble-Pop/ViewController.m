//
//  ViewController.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "ViewController.h"
#import "Shots.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    [ShotsRequester.new getPopularPostsWithSuccessBlock:^(NSArray *results) {
        Shots *shots = [[Shots alloc]init];
        shots = [results objectAtIndex:0];
        NSString *imgURL = shots.images.imgNormal;
        [self.imgShot sd_setImageWithURL:[NSURL URLWithString:imgURL]
                             placeholderImage:NULL
                                      options:SDWebImageRetryFailed];
        NSLog(@"SUCESSO %@", shots.images.imgNormal);
    } errorBlock:^(NSError *error) {
         NSLog(@"ERRO");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)imageTouch:(id)sender {
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"detalhes"];
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma MARK - TABLEVIEW DELEGATE

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"ShootCell";
    
    ShootCell *cell = [tableView dequeueReusableCellWithIdentifier:
                         cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ShootCell" owner:nil options:nil] firstObject];
    }
    
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
@end
