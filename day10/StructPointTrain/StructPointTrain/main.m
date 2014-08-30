//
//  main.m
//  StructPointTrain
//
//  Created by liushuai on 14-8-30.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct person{
    char name[10];
    int age;
}Person;



int main(int argc, const char * argv[])
{
    
    Person p1={"liu21",21};
    Person p2={"liu22",22};
    //打印p1,p2的地址
    printf("p1的地址为%ld\n",(long)&p1);
    printf("p2的地址为%ld\n",(long)&p2);
    
    p1=p2;
    printf("p1的地址为%ld\n",(long)&p1);
    printf("p2的地址为%ld\n",(long)&p2);
    
    
    
    return 0;
}

