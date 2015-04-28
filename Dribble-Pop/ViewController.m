//
//  ViewController.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/28/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.tableView.delegate = self;
    //self.tableView.dataSource = self;
    
    //self.shots = [NSMutableArray array];
    
    // http://api.dribbble.com/shots/everyone
    
    // 1) crate a URL
    NSURL *url = [NSURL URLWithString:@"https://api.dribbble.com/v1/shots?access_token=01fc9f4f4195073f4f2a340df4bef928c9d5ad277fe8e27c47daa96bf75419a0"];
    
    //2) create a NSURLRequest. This embodies the request sent to the server.
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:0
                                         timeoutInterval:8.0];
    [request HTTPMethod];
    
    // 3) fire the request: The new and BETTER way
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
                               //update UI
                               
                               NSDictionary *jSONdictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                                              options:0
                                                                                                error:nil];
                               
                               NSLog(@"%@", jSONdictionary);
                               //self.shots = [jSONdictionary objectForKey:@"shots"];
                               //[self.tableView reloadData];
                               
                               //                               for (NSDictionary *shot in self.shots) {
                               //                                   [[shot objectForKey:@"player"] objectForKey:@"followers_count"];
                               //                                   NSLog(@"%@", [[shot objectForKey:@"player"] objectForKey:@"followers_count"] );
                               //                               }
                               //
                               //                               //--- above and below are same thing ---
                               //                               /*
                               //                               NSArray *shots = jSONdictionary[@"shots"];
                               //                               for (NSDictionary *shotURL in shots) {
                               //                                   //NSLog(@"%@", shotURL[@"image_url"]);
                               //                               }*/
                               
                           }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
