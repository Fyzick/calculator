//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Samuel Harlan on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain
- (void)setOperand:(double)anOperand
{
	operand = anOperand;
}

- (void)performWaitingOperation
{
	if([@"+" isEqual:waitingOperation]) {
		operand = waitingOperand + operand;
	} else if([@"-" isEqual:waitingOperation]) {
		operand = waitingOperand - operand;
	} else if([@"*" isEqual:waitingOperation]) {
		operand = waitingOperand * operand;
	} else if([@"/" isEqual:waitingOperation]) {
		if(operand) {
			operand = waitingOperand / operand;
		}
	}	
	
	
}- (double)performOperation:(NSString *)operation
{
	if ([operation isEqual:@"sqrt"]) {
		operand = sqrt(operand);
	} else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}

	return operand;
}

@end
