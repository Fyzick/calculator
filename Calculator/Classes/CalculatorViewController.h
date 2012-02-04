//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Samuel Harlan on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
	IBOutlet UILabel *display;
	CalculatorBrain *brain;
	BOOL userIsInTheMiddleOfTypingANumber;
	
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)opertaionPressed:(UIButton *)sender;

@end

