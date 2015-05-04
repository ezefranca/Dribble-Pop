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

@interface ViewController (){
    NSString *imgURL;
    Shots *shots;
    NSMutableArray *allShots;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    [self requestFromDribble];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma MARK - REQUEST
-(void)requestFromDribble{
    [ShotsRequester.new getPopularPostsWithSuccessBlock:^(NSArray *results) {
        allShots = [[NSMutableArray alloc]initWithArray:results];
        //NSLog(@"SUCESSO %@", [allShots objectAtIndex:0]);
        [self.tableView reloadData];
    } errorBlock:^(NSError *error) {
        //NSLog(@"ERRO");
    }];

}
#pragma MARK - TABLEVIEW DELEGATE

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"ShootCell";
    
    ShootCell *cell = [tableView dequeueReusableCellWithIdentifier:
                         cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ShootCell" owner:self options:nil] firstObject];
    }
    
    if (allShots != nil) {
        if ((indexPath.row % 11) == 0) {
           // [self requestFromDribble];
        }
    shots = [allShots objectAtIndex:indexPath.row];
    imgURL = shots.images.imgNormal;
     cell.titleShoot.text = shots.shotTitle;
    [cell.imageShoot sd_setImageWithURL:[NSURL URLWithString:imgURL]
                    placeholderImage:NULL
                             options:SDWebImageRetryFailed];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //if ([allShots count] == 0) {
        return 11;
    //}
    //return [allShots count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 320;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    shots = [allShots objectAtIndex:indexPath.row];
    imgURL = shots.images.imgNormal;
    [self persistToDefault:shots];
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"detalhes"];
    [self.navigationController pushViewController:controller animated:YES];
   // [[NSNotificationCenter defaultCenter]postNotificationName:NOTICATION_DETALHES_DRIBBLE object:imgURL];
   //  NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"imagemURL"]);
}
#pragma mark - PERSISTENCIA

- (void)persistToDefault:(Shots*)shot{
    // Mudar para Realm.io
    [[NSUserDefaults standardUserDefaults] setObject:shot.images.imgNormal forKey:@"imagemURL"];
    [[NSUserDefaults standardUserDefaults] setObject:shot.shotDescription forKey:@"descriptionTEXT"];
    [[NSUserDefaults standardUserDefaults] setObject:shot.user.playerName forKey:@"playerNAME"];
    [[NSUserDefaults standardUserDefaults] setObject:shot.user.playerAvatar forKey:@"playerAVATAR"];
    [[NSUserDefaults standardUserDefaults] setObject:shot.user.playerUserName forKey:@"playerUSERNAME"];
    [[NSUserDefaults standardUserDefaults] setObject:shot.user.playerURL forKey:@"playerURL"];
    //NSLog(@"%@", shot.shotDescription);
    [[NSUserDefaults standardUserDefaults] synchronize];
    //NSLog(@"Persistiu");
}

@end
