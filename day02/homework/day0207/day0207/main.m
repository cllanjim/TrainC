//
//  main.m
//  day0207
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//(**)从键盘输入两个实数 a 和 b,输出 a 占 b 的百分之几。小数点后保留 2位。
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    double a,b;
    scanf("%lf%lf",&a,&b);
    printf("%.2lf%%",a/b*100);
    return 0;
}

