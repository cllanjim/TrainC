//
//  main.m
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{
    Person *p1 = [[Person alloc] initSetage:22 andName:@"xigua"];
    [p1 performSelector:@selector(show)];
    [p1 performSelector:NSSelectorFromString(@"show")];
    
}

