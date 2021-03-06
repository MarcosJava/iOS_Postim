//
//  PostimTests.m
//  PostimTests
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PostimManager.h"
#import "CombustivesEnum.h"

@interface PostimTests : XCTestCase

@end

@implementation PostimTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testGasolina {
    PostimManager *manager = [PostimManager new];
    VantagemCombustivel vantagem = [manager verificarVantagemDaGasolina:1.5 EAlcool:3.5];
    XCTAssertEqual(GASOLINA, vantagem);
}


- (void)testAlcool {
    PostimManager *manager = [PostimManager new];
    VantagemCombustivel vantagem = [manager verificarVantagemDaGasolina:3.5 EAlcool:1.5];
    XCTAssertEqual(ALCOOL, vantagem);
}


@end
