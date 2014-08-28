//
//  main.m
//  day0206
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//(**)编写一个程序,要求用户输入一个美元数量,然后显示出增加%5 税
//率后的相应金额。格式如下所示:
//Enter an amount:100.00 With tax added:$105.00
#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    double a;
    printf("Enter an amount:\n");
    scanf("%lf",&a);
    printf("With tax added:%.2lf",a*1.05);
    return 0;
}

