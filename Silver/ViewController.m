//
//  ViewController.m
//  Silver
//
//  Created by Sidney Silva on 23/02/15.
//  Copyright (c) 2015 Sidney Silva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pergunta;
@synthesize resposta;
@synthesize perguntaLabel;
@synthesize respostaLabel;
@synthesize imagem;


- (void)viewDidLoad {
    [super viewDidLoad];
    pergunta = @[@"What's your name?",
                 @"what's your quest?",
                 @"What's the capital of Assyria?"];
    resposta = @[@"Sir Robbin of Camelot",
                 @"To seek the Holy Grail",
                 @"I... I don't know that... NO!! GAAAAHH"];
    _contador = 0;
    _controlador = 0;
    self.view.backgroundColor = [UIColor colorWithRed:200/255.0 green:250/255.0 blue:233/255.0 alpha:1];
    _img = [[UIImage alloc] init];
    _img = [UIImage imageNamed:@"bridgekeeper.jpg"];
    
    [imagem setImage:_img];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)perguntaButton:(id)sender {
    [perguntaLabel setText:pergunta[_contador]];
    [respostaLabel setText:@""];
    _controlador++;
    
    _img = [UIImage imageNamed:@"bridgekeeper.jpg"];
    
    [imagem setImage:_img];
    
}

- (IBAction)respostaButton:(id)sender {
    if (_controlador > _contador) {
        [respostaLabel setText:resposta[_contador]];
        _contador++;
    }
    
    if (_contador == 1) {
        _img = [UIImage imageNamed:@"sirRobin1.jpg"];
        
        [imagem setImage:_img];
        
    }else if (_contador == 2){
        _img = [UIImage imageNamed:@"sirRobin2.jpg"];
        
        [imagem setImage:_img];
    }else{
        _img = [UIImage imageNamed:@"sirRobin3.jpg"];
        
        [imagem setImage:_img];
    }
    
    
    if (_contador > 2) {
        _contador = 0;
        _controlador = 0;
    }
}

@end
