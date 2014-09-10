//
//  Car.h
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property int wheels,speed;
-(int)compareSpeedWithOther:(Car *)otherCar;
+(int)comparSpeedWith:(Car *)one and:(Car *)another;
@end
