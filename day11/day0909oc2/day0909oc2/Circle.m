//
//  Circle.m
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Circle.h"

@implementation Circle
-(BOOL)isOverlap:(Circle *)other{
    if ([self.point lengthWithAnother:other.point]==0&&self.radius ==other.radius) {
        return true;
    }
    return false;
}

+(BOOL)isOverlapByOne:(Circle *)one andOther:(Circle *)another{
    if ([one.point lengthWithAnother:another.point]==0&&one.radius ==another.radius) {
        return true;
    }
    return false;
}
@end
