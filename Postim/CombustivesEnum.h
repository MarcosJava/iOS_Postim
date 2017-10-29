//
//  CombustivesEnum.h
//  Postim
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CombustivesEnum : NSObject

typedef enum {
    GASOLINA,
    ALCOOL,
    NONE
} VantagemCombustivel;

+ (NSString *) toString:(VantagemCombustivel) formatType;

@end
