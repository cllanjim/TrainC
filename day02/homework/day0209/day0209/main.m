//
//  main.m
//  day0209
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//(*)输入两个整数,打印这两个数的和,差,积,余数
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\n",a+b);
    printf("%d\n",a-b);
    printf("%d\n",a*b);
    printf("%d\n",a%b);
    return 0;
}

