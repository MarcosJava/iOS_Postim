//
//  PostimManager.h
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivesEnum.h"

@interface PostimManager : NSObject

-(VantagemCombustivel) verificarVantagemDaGasolina: (double) gasolina EAlcool: (double) alcool;
@end
