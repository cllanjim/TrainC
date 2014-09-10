//
//  Circle.h
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Point2D.h"
@interface Circle : NSObject
@property double radius;
@property Point2D *point;
-(BOOL)isOverlap:(Circle *)other;
+(BOOL)isOverlapByOne:(Circle *)one andOther:(Circle *)another;
@end
