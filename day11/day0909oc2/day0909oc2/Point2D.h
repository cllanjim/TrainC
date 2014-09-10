//
//  Point2D.h
//  day0909oc2
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Point2D : NSObject
@property double x,y;
-(void)setX:(double)x andY:(double)Y;
-(double)lengthWithAnother:(Point2D *)another;
+(double)lengthWithOne:(Point2D *)one andOther:(Point2D *)another;
@end
