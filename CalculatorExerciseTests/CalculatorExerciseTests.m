//
//  CalculatorExerciseTests.m
//  CalculatorExerciseTests
//
//  Created by Alessandro on 08/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"

#define FLOAT_ACCURACY 0.01

@interface CalculatorExerciseTests : XCTestCase

@end

@implementation CalculatorExerciseTests

- (void) testCalculatorIsNotNil{
	Calculator *c = [[Calculator alloc] init];
	XCTAssert(c != nil);
}

- (void) testM1Is0{
	Calculator *c = [[Calculator alloc] init];
	XCTAssert(c.m1 == 0);
}

- (void) testM2Is0{
	Calculator *c = [[Calculator alloc] init];
	XCTAssert(c.m2 == 0);
}

- (void) testM1InitializerIsWorking{
	CGFloat m1 = 42.0;
	Calculator *c = [[Calculator alloc] initWithM1:m1];
	XCTAssertEqualWithAccuracy(c.m1, m1, FLOAT_ACCURACY);
	XCTAssertEqualWithAccuracy(c.m2, 0, FLOAT_ACCURACY);
}

- (void) testDesignatedInitializerIsWorking {
	CGFloat m1 = 99.9;
	CGFloat m2 = 17.1;
	Calculator *c = [[Calculator alloc] initWithM1:m1 andM2:m2];
	XCTAssertEqualWithAccuracy(c.m1, m1, FLOAT_ACCURACY);
	XCTAssertEqualWithAccuracy(c.m2, m2, FLOAT_ACCURACY);
}

- (void) testStoreToMemory {
	CGFloat n1 = 32.87;
	CGFloat n2 = 143.66;
	Calculator *c = [[Calculator alloc] init];
	c.m1 = n1;
	c.m2 = n2;
	XCTAssertEqualWithAccuracy(c.m1, n1, FLOAT_ACCURACY);
	XCTAssertEqualWithAccuracy(c.m2, n2, FLOAT_ACCURACY);
}

- (void) testSum {
	CGFloat n1 = 42.19;
	CGFloat n2 = 87.16;
	CGFloat sum = n1 + n2;
	Calculator *c = [[Calculator alloc] initWithM1:n1 andM2:n2];
	[c sum];
	XCTAssertEqualWithAccuracy(c.m1, sum, FLOAT_ACCURACY);
	XCTAssertEqualWithAccuracy(c.m2, 0, FLOAT_ACCURACY);
}

- (void) testReset {
	Calculator *c = [[Calculator alloc] initWithM1:42.0 andM2:99.99];
	[c reset];
	XCTAssertEqualWithAccuracy(c.m1, 0, FLOAT_ACCURACY);
	XCTAssertEqualWithAccuracy(c.m2, 0, FLOAT_ACCURACY);
}

@end
