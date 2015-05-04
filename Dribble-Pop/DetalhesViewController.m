//
//  DetalhesViewController.m
//  Dribble-Pop
//
//  Created by Ezequiel Santos on 4/30/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "DetalhesViewController.h"

@implementation DetalhesViewController

#pragma mark - CICLO DE VIDA

-(void)viewDidLoad{
    [super viewDidLoad];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDetails:) name:NOTICATION_DETALHES_DRIBBLE object:nil];
    [self loadDetails:[[NSUserDefaults standardUserDefaults] objectForKey:@"imagemURL"]];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

#pragma mark - CARREGAR DADOS NA TELA

-(void)loadDetails:(NSString *)imagemURL{
    [self.detalhesImage sd_setImageWithURL:[NSURL URLWithString:imagemURL]
                       placeholderImage:NULL
                                options:SDWebImageRetryFailed];
    
    [self.playerAvatar sd_setImageWithURL:[NSURL URLWithString:[[NSUserDefaults standardUserDefaults] objectForKey:@"playerAVATAR"]]];
    self.playerAvatar.layer.cornerRadius = self.playerAvatar.layer.bounds.size.height/2;
    self.playerAvatar.layer.masksToBounds = YES;
    self.playerName.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"playerNAME"];
    self.playerUsername.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"playerUSERNAME"];
    

    self.detalhesDescription.translatesAutoresizingMaskIntoConstraints = NO;
    NSString *htmlString = [[NSUserDefaults standardUserDefaults] objectForKey:@"descriptionTEXT"];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    self.detalhesDescription.attributedText = attributedString;
}

@end
