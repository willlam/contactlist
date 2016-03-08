//
//  Contact.h
//  contactlist
//
//  Created by William Lam on 2016-03-08.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *email;

- (instancetype)initWithName:(NSString *)name
					andEmail:(NSString *)email;

@end
