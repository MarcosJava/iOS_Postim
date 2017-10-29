//
//  CombustivesEnum.m
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import "CombustivesEnum.h"

@implementation CombustivesEnum
+(NSString *) toString:(VantagemCombustivel) formatType{
 
    NSString *result = nil;
    switch (formatType) {
        case GASOLINA:
            result = @"Gasolina é o melhor";
            break;
        case ALCOOL:
            result = @"Alcool é o melhor";
            break;
        case NONE:
            result = @"Nenhum";
            break;
        default:
            [NSException raise:NSGenericException format:@"Unexpected VantagemCombustivel."];
    }    
    return result;
}
@end
