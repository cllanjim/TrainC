//
//  Person.h
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Statue.h"

@interface Person : Statue
@property int age;
@property NSString *name;
- (id)initSetage:(int)age andName:(NSString *)name;
-(void)show;
@end
