//
//  Tescase.m
//  Conti-Tests
//
//  Created by Walter Gonzalez Domenzain on 15/05/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Sums.h"


@interface Tescase : XCTestCase
@property (nonatomic) Sums *vcSums;


@end


@interface Sums (Test)
-(NSString*)showString;
-(BOOL)isEvenNumber;
-(BOOL) isFibonacciNumber: (int) n;
-(BOOL)isPrimeNumber:(NSInteger) number;
-(BOOL)isEvenNumber:(NSInteger)number;
@end

@implementation Tescase

- (void)setUp {
    [super setUp];
    self.vcSums=[[Sums alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testshowString
{
    NSString *sResult ;
    NSString *sExresult =@"Ruben";
    
    sResult = [self.vcSums showString];
    NSLog(@"sResult =%@",sResult);
    
    XCTAssertEqualObjects(sExresult, sResult, @"Pass");
    
}

-(void)testIsPrimeNumber
{
    BOOL iResult;
    BOOL iExResult = NO;
    
    for (int i=0; i<100; i++)
    {
        iResult = [self.vcSums isPrimeNumber:i];
        XCTAssertEqual(iExResult, iResult, @"Pass");
    }
}

-(void)testIsEvenNumber
{
    BOOL iResult;
    BOOL iExResult = NO;
    for (int i=0; i<100; i++)
    {
        iResult = [self.vcSums isEvenNumber:i];
        XCTAssertEqual(iExResult, iResult, @"Pass");
    }
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
