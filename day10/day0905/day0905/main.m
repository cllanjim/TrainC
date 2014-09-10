//
//  main.m
//  day0905
//
//  Created by liushuai on 14-9-5.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kNumber 4
#define PI 3.1415926
#define MUL(a,b) ((a)*(b))
typedef struct student{
    int number;
    char name[20];
    int age;
    char gender;
    float score;
}Student;
typedef struct cpoint{
    float x;
    float y;
}Cpoint;
int main(int argc, const char * argv[])
{
//    char strings[5][6] = {"aa","bbb"};
//    printf("%p\n",strings);
//    printf("%p\n",&strings);
//    printf("%p\n",&strings[0]);
//    printf("%p\n",&strings[0][1]);
//    Student stu1 = {1,"xiaofeifei",22,'f'};
//    Student *p_stu = &stu1;
//    printf("name = %s\n",p_stu->name);
//    printf("age is %d\n",p_stu->age);
    
//    Cpoint m,n;
//    Cpoint *p1,*p2;
//    p1 = &m;
//    p2 = &n;
//    p1->x = 1,0;
//    p1->y = 1.0;
//    p2->x = 4.0;
//    p2->y = 5.0;
//    float x = sqrtf(pow(p1->x-p2->x,2)+pow(p1->y-p2->y, 2));
//    printf("%f",x);
//    
//    Student stu1 = {1,"lan ou",20,'m'};
//    
//    Student *pstu = &stu1;
//    
//    for (int i=0; pstu->name[i]!='\0'; i++) {
//        if (i==0) {
//            pstu->name[i] = pstu->name[i]-32;
//        }
//        if (pstu->name[i]==' ') {
//            pstu->name[i] = '_';
//        }
//        
//    }
//    printf("%s",pstu->name);
    
    
//    Student stu1 = {1,"haoyuxin",20,'m',101};
//    Student stu2 = {2,"haoyuanxin",21,'m',77};
//    Student stu3 = {3,"haoyinxin",22,'m',100};
//    Student stu4 = {3,"yangliuliu",18,'f',80};
//    Student stu[kNumber] = {stu1,stu2,stu3,stu4};
//    Student *p = stu;
//    for (int i=0; i<4; i++) {
//        if((p+i)->gender=='m'){
//            (p+i)->score = (p+i)->score+(100-(p+i)->score>10?10:100-(p+i)->score);
//        }
//    }
//    for (int i=0; i<4; i++) {
//        printf("%s\n",(p+i)->name);
//        printf("%f\n",(p+i)->score);
//    }
    
    int a = 3;
    show(a);
    
    
    
    return 0;
}

