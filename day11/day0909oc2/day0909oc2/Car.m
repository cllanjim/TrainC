//
//  Car.m
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Car.h"

@implementation Car
-(int)compareSpeedWithOther:(Car *)otherCar{
    return self.speed - otherCar.speed;
}
+(int)comparSpeedWith:(Car *)one and:(Car *)another{
    return one.speed - another.speed;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"wheels is %d,speed is %d", self.wheels,self.speed];
}
@end
