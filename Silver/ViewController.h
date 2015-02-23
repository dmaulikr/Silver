//
//  ViewController.h
//  Silver
//
//  Created by Sidney Silva on 23/02/15.
//  Copyright (c) 2015 Sidney Silva. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController
@property NSArray *pergunta;
@property NSArray *resposta;
@property int contador;
@property int controlador;
@property UIImage *img;
@property (weak, nonatomic) IBOutlet UILabel *perguntaLabel;
@property (weak, nonatomic) IBOutlet UILabel *respostaLabel;
- (IBAction)perguntaButton:(id)sender;
- (IBAction)respostaButton:(id)sender;


@end

