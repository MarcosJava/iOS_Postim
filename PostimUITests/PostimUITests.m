//
//  PostimUITests.m
//  PostimUITests
//
//  Created by Marcos Felipe Souza on 28/10/2017.
//  Copyright © 2017 Marcos. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CombustivesEnum.h"
@interface PostimUITests : XCTestCase

@end

@implementation PostimUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testParaAlcool {
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    XCUIElement *alcoolTextField = app/*@START_MENU_TOKEN@*/.textFields[@"precoAlcool"]/*[[".textFields[@\"1.99\"]",".textFields[@\"precoAlcool\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [alcoolTextField tap];
    [alcoolTextField typeText:@"1.50"];
    
    XCUIElement *gasolinaTextField = app/*@START_MENU_TOKEN@*/.textFields[@"precoGasolina"]/*[[".textFields[@\"2.99\"]",".textFields[@\"precoGasolina\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [gasolinaTextField tap];
    [gasolinaTextField typeText:@"3.99"];
    
    [app.buttons[@"calcularBtn"] tap];
    
    BOOL resultado = [app.staticTexts[@"Alcool é o melhor"] exists];
    XCTAssertEqual(YES, resultado);
}

- (void)testParaGasolina {
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    XCUIElement *alcoolTextField = app/*@START_MENU_TOKEN@*/.textFields[@"precoAlcool"]/*[[".textFields[@\"1.99\"]",".textFields[@\"precoAlcool\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [alcoolTextField tap];
    [alcoolTextField typeText:@"4.50"];
    
    XCUIElement *gasolinaTextField = app/*@START_MENU_TOKEN@*/.textFields[@"precoGasolina"]/*[[".textFields[@\"2.99\"]",".textFields[@\"precoGasolina\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [gasolinaTextField tap];
    [gasolinaTextField typeText:@"2.99"];
    
    [app.buttons[@"calcularBtn"] tap];
    
    BOOL resultado = [app.staticTexts[@"Gasolina é o melhor"] exists];
    XCTAssertEqual(YES, resultado);
}

@end
