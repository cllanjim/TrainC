//
//  Student.h
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"
#import "Book.h"
@interface Student : Person
@property int sno;
@property Book *mybook;
- (void)showMyBook;
@end
