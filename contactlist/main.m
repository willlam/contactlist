//
//  main.m
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {

	InputCollector *inputCollector = [[InputCollector alloc] init];
	ContactList *contactList = [[ContactList alloc] init];
	NSString *inputSelection;
	
	while (![inputSelection isEqualToString:@"quit"]) {
		
	
		inputSelection = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application"];
		
		// Get input from user
		
		char userInput[50];
		fgets(userInput, 50, stdin);
		inputSelection = [NSString stringWithUTF8String:userInput];
		
		
		if ([inputSelection isEqual:@"quit"]) {
			return 0;
		}
		
//		 User chooses new
		else if ([inputSelection isEqualToString:@"new"]) {
			char userName[255];
			char userEmail[255];
			
			NSString *contactName = [inputCollector inputForPrompt:@"New contact name"];
			fgets(userName, 255, stdin);
			NSString *contactEmail = [inputCollector inputForPrompt:@"New contact email"];
			fgets(userEmail, 255, stdin);
			
			contactName = [NSString stringWithUTF8String:userName];
			contactEmail = [NSString stringWithUTF8String:userEmail];
			// Get rid of \n at end of string that fgets puts there
			contactName = [contactName stringByReplacingOccurrencesOfString:@"\n" withString:@""];
			contactEmail = [contactEmail stringByReplacingOccurrencesOfString:@"\n" withString:@""];
			
			Contact *contact = [[Contact alloc] initWithName:contactName andEmail:contactEmail];
			
			[contactList addContact:contact];
			
			NSLog(@"%@ has been added to your contact list", contactName);
			
			
			//Choose quit
		} else if ([inputSelection isEqualToString:@"quit"]) {
			NSLog(@"You have quit. Goodbye!");
			
			//Choose list
		} else if ([inputSelection isEqualToString:@"list"]) {
			[contactList printList];
			
		} else {
			NSLog(@"That is not a valid option");
			
		}
		
	}

    return 0;
}
