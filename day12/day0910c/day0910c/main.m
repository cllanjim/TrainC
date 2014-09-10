//
//  main.m
//  day0910c
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>



//typedef struct student{
//    char name[40];
//    int score;
//}Student;
//typedef  BOOL (*PFUN)(Student,Student);
//int max(int a,int b){
//    return a>b?a:b;
//}
//int sum(int a,int b){
//    return a+b;
//}
//void printHello(){
//    printf("hello");
//}
//void changeName(char name[]){
//    strcat(name, "gaofushuai");
//}
//void findStudent(Student stu[],int size,void (*p)(char *)){
//    for (int i=0; i<size; i++) {
//        if(stu[i].score>90){
//            p(stu[i].name);
//        }
//    }
//}
//
//
//
//int getValue(int a,int b ,int (*p)(int,int)){
//    return p(a,b);
//}
//
//
//void showAll(Student stu[],int size){
//    for (int i=0; i<size; i++) {
//        printf("%s ",stu[i].name);
//        printf("%d \n",stu[i].score);
//    }
//}
//void allChangeTwoNum(void *a,void *b,void (*p)(void *,void *)){
//    p(a,b);
//}
//void changeWord(void *a,void *b){
//    double temp;
//    temp = *((double *)a);
//    *(double *)a = *(double *)b;
//    *(double *)b=temp;
//}
//
//void sortArray(Student stu[],int size,PFUN p){
//    for (int i=0; i<size; i++) {
//        for (int j=0; j<size-1-i; j++) {
//            if (p(stu[j],stu[j+1])) {
//                Student temp = stu[j];
//                stu[j] = stu[j+1];
//                stu[j+1] = temp;
//                
//            }
//        }
//    }
//}
//
//
//BOOL compareByScore(Student stu1,Student stu2){
//    return stu1.score>stu2.score;
//}
//BOOL compareByName(Student stu1,Student stu2){
//    int result = strcmp(stu1.name, stu2.name);
//    if (result>=0) {
//        return 1;
//    }else{
//        return 0;
//    }
//}

int main(int argc, const char * argv[])
{
//    int (*p)(int a,int b) = max;
//    printf("%p\n",&p);
//    printf("%p\n",p);
//    void (*pp)() = printHello;
//    pp();
    
//    char str[20];
//    scanf("%s",str);
//    if (strcmp(str, "max")==0) {
//        p=max;
//    }
//    if(strcmp(str, "sum")==0){
//        p=sum;
//    }
//    printf("%d",p(3,5));
    
    
    printf("%d",getValue(3,5,max));
    
    Student stu[5]={{"aa",20},{"hh",19},{"pp",20},{"aaa",100},{"uuu",90}};
    findStudent(stu, sizeof(stu)/sizeof(stu[0]), changeName);
//    showAll(stu,sizeof(stu)/sizeof(stu[0]));
    
//    double a=3,b=4;
//    
//    allChangeTwoNum(&a, &b, changeWord);
//    printf("%lf",a);
//    printf("%lf",b);
    
    sortArray(stu, sizeof(stu)/sizeof(stu[0]), compareByScore);
    showAll(stu, sizeof(stu)/sizeof(stu[0]));
    
    
    
    
    
    return 0;
}

