//
//  Contact.m
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name
					andEmail:(NSString *)email
{
	self = [super init];
	if (self) {
		_name = name;
		_email = email;
	}
	return self;
}

@end
