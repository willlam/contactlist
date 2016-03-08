//
//  inputCollector.h
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject


// Last time, we just printed all this from the main.m file, and things got a bit messy. Now we're going to create an InputCollector object to clean this up a bit.

// Create the InputCollector class, and add a single method to it: -(NSString *)inputForPrompt:(NSString *)promptString. This method will take in a single string parameter promptString, and return whatever text the user inputs after that prompt.


-(NSString *)inputForPrompt:(NSString *)promptString;

@end
