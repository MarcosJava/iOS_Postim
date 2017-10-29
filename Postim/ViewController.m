//
//  ViewController.m
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _postimManager = [[PostimManager alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)calcularPreco:(id)sender {
    [self.view endEditing:YES];
    
    if (self.precoAlcoolTxField.text && self.precoAlcoolTxField.text.length > 0) {
        if(self.precoGasolinaTxField.text && self.precoGasolinaTxField.text.length > 0){
            
            double gasolina = [self.precoGasolinaTxField.text doubleValue];
            double alcool = [self.precoAlcoolTxField.text doubleValue];
            
            VantagemCombustivel vantagem = [_postimManager verificarVantagemDaGasolina:gasolina EAlcool:alcool];
            self.resultadoLabel.text = [CombustivesEnum toString:vantagem];
        }
    }
}

@end
