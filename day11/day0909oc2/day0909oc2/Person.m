//
//  Person.m
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initSetage:(int)age andName:(NSString *)name{
    
    
    if (self = [super init]) {
        self.age = age;
        self.name = name;
        
    }
    return self;
    
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%d,%@", self.age,self.name];
}
+ (NSString *)description
{
    return @"Person类";
}
-(void)show{
    NSLog(@"hahashow");
}

@end
