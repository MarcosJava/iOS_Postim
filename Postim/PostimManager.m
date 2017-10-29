//
//  PostimManager.m
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import "PostimManager.h"

@implementation PostimManager

-(VantagemCombustivel) verificarVantagemDaGasolina: (double) gasolina EAlcool: (double) alcool {
    
    double resultado = alcool / gasolina;
    
    if(resultado >= 0.7){
        return GASOLINA;
    } else {
        return ALCOOL;
    }
}

@end
