//
//  ViewController.h
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CombustivesEnum.h"
#import "PostimManager.h"

@interface ViewController : UIViewController

@property PostimManager *postimManager;

@property (weak, nonatomic) IBOutlet UITextField *precoAlcoolTxField;
@property (weak, nonatomic) IBOutlet UITextField *precoGasolinaTxField;
- (IBAction)calcularPreco:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultadoLabel;
-(BOOL) calculoDaGasolina:(double)valorGasolina ComAlcool:(double)valorAlcool;

@end

