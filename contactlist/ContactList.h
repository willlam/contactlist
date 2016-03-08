//
//  ContactList.h
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *contactList;

-(void)addContact:(Contact *)newContact;

- (NSMutableArray *)printList;

@end
