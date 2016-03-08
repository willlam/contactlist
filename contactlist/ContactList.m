//
//  ContactList.m
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


- (instancetype)initWithContactList
{
	self = [super init];
	if (self) {
		_contactList = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)addContact:(Contact *)newContact {
	[self.contactList addObject:(Contact *)newContact];
}

- (NSMutableArray *)printList {
	for (Contact *contact in _contactList) {
		NSUInteger index = [_contactList indexOfObject:contact];
		NSLog(@"%lu: <%@> ()", index, contact.name);
	}
	return nil;
}

@end
