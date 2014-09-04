//
//  main.m
//  lesson7
//
//  Created by liushuai on 14-9-2.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GitChiFounction.h"
int func(int x){
    if(x<=1){
        return 1;
    }
    int num  = x*func(x-1);
    return num;
}
int main(int argc, const char * argv[])
{
    int x=func(4);
    printf("%d",x);
    return 0;
}
