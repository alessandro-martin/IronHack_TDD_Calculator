//
//  Calculator.m
//  CalculatorExercise
//
//  Created by Alessandro on 08/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import "Calculator.h"

#define M1_INITIAL_STATE 0
#define M2_INITIAL_STATE 0

@implementation Calculator

- (instancetype)init {
	return [self initWithM1:M1_INITIAL_STATE andM2:M2_INITIAL_STATE];
}

- (instancetype)initWithM1:(CGFloat)m1 {
	return [self initWithM1:m1 andM2:M2_INITIAL_STATE];
}

- (instancetype)initWithM1:(CGFloat)m1
					 andM2:(CGFloat)m2 {
	if (self = [super init]) {
		_m1 = m1;
		_m2 = m2;
	}
	return self;
}


- (void) sum {
	self.m1 += self.m2;
	self.m2 = 0;
}

- (void) reset {
	self.m1 = 0;
	self.m2 = 0;
}

@end
