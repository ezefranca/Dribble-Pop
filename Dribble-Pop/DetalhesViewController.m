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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDetails:) name:NOTICATION_DETALHES_DRIBBLE object:nil];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

#pragma mark - CARREGAR DADOS NA TELA

-(void)loadDetails:(NSNotification *)notification{
    
}

@end
