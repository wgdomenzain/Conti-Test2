//
//  Conti_TestsTests.m
//  Conti-TestsTests
//
//  Created by Walter Gonzalez Domenzain on 15/05/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Sums.h"

@interface Conti_TestsTests : XCTestCase
@property (nonatomic) Sums  *vcToTest;
@end

@interface Sums (Test)
-(int)calculateSums;
@end

@implementation Conti_TestsTests

- (void)setUp {
    [super setUp];
    self.vcToTest = [[Sums alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCalculteSums
{
    int iResult = 0;
    int iExpectedResult = 4;
    
    iResult = [self.vcToTest calculateSums];
    XCTAssertEqual(iExpectedResult, iResult, @"Pass");
    
}
- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
