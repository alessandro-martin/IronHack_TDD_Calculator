//
//  Calculator.h
//  CalculatorExercise
//
//  Created by Alessandro on 08/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreImage/CoreImage.h>

@interface Calculator : NSObject

@property (nonatomic) CGFloat m1;
@property (nonatomic) CGFloat m2;

- (instancetype)initWithM1:(CGFloat)m1;
// Designated Initializer
- (instancetype)initWithM1:(CGFloat)m1
					 andM2:(CGFloat)m2;

- (void) sum;
- (void) reset;

@end
