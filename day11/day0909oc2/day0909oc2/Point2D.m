//
//  Point2D.m
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Point2D.h"

@implementation Point2D
-(void)setX:(double)x andY:(double)y{
    _x = x;
    _y = y;
}
-(double)lengthWithAnother:(Point2D *)another{
    return sqrt(pow(_x-another.x, 2)+pow(_y-another.y, 2));
}
+(double)lengthWithOne:(Point2D *)one andOther:(Point2D *)another{
    return sqrt(pow(one.x-another.x, 2)+pow(one.y-another.y, 2));
}
@end
