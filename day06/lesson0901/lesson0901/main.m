//
//  main.m
//  lesson0901
//
//  Created by liushuai on 14-9-1.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    char name[7][20];
    for (int i=0; i<7; i++) {
        scanf("%s",name[i]);
    }
    int max =0 ;
    int flag = 0;
    for (int i=0; i<7; i++) {
        int len = (int)strlen(name[i]);
        if(i==0||len>max){
            max = len;
            flag = i;
        }
    }
    printf("name is %s",name[flag]);
    return 0;
}

