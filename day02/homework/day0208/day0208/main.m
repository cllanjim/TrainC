//
//  main.m
//  day0208
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//(**)编写一个程序,要求用户输入一个美金数量, 然后显示出如何用最 少的 20 美元、10 美元、5 美元和 1 美元来付款:
//Enter a dollar amount:93 $20 bills: 4
//$10 bills: 1
//$5 bills:0
//$1 bills:3
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    int x,count20,count10,count5,count1;
    scanf("%d",&x);
    count20 = x/20;
    x=x%20;
    count10 = x/10;
    x%=10;
    count5 = x/5;
    x%=5;
    count1 = x/1;
    x%=1;
    printf("$20 bills:%d\n",count20);
    printf("$10 bills:%d\n",count10);
    printf("$5 bills:%d\n",count5);
    printf("$1 bills:%d\n",count1);
    return 0;
}

