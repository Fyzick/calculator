//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Samuel Harlan on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

- (void)performWaitingOperation;
- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;

@end
