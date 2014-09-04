////
////  main.m
////  day0903
////
////  Created by liushuai on 14-9-3.
////  Copyright (c) 2014年 Liushuai. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////struct student {
////    char name[20];
////    int age;
////    char gender;
////}stu10 = {"liuliu",19,'m'};
////typedef struct student Student;
//
//typedef struct date{
//    int year;
//    int month;
//    int day;
//}Date;
//
//typedef struct student{
//    char name[20];
//    int score;
//    int age;
//    Date date;
//}Student;
//
//Student getMaxScore(Student stu1,Student stu2,Student stu3){
//    Student s = stu1;
//    int score = stu1.score;
//    if (score<stu2.score) {
//        score = stu2.score;
//        s=stu2;
//        
//    }
//    if (score<stu3.score) {
//        score = stu3.score;
//        s=stu3;
//    }
//    return s;
//}
//Student getMinAge(Student stu1,Student stu2,Student stu3){
//    Student s = stu1;
//    int age = stu1.age;
//    if (age>stu2.age) {
//        age = stu2.age;
//        s=stu2;
//        
//    }
//    if (age>stu3.age) {
//        age = stu3.age;
//        s=stu3;
//    }
//    return s;
//}
//int main(int argc, const char * argv[])
//{
//    Date date1 = {1987,1,1};
//    Date date2 = {1985,2,5};
//    Date date3 = {1999,2,2};
//    
//    Student stu1 = {"xiaoming",80,19,date1};
//    Student stu2 = {"lihua",90,20,date2};
//    Student stu3 = {"zhangmeimei",60,20,date3};
//    
//    Student s  = getMaxScore(stu1, stu2, stu3);
//    printf("%s",s.name);
//    
//    Student s2 = getMinAge(stu1, stu2, stu3);
//    printf("%s",s2.name);
//    
//    
//    printf("%s,%d,%d,%d,%d,%d",stu1.name,stu1.age,stu1.score,stu1.date.year,stu1.date.month,stu1.date.day);
//    return 0;
//}
//
