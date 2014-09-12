//
//  main.m
//  day0910c
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

#define N 3
#define Y(n) ((4)*n)




typedef int (* PFUN)(int,int);

typedef struct funlist{
    
    char name[50];
    PFUN pf;
    
}Funlist;

int sum(int x,int y){
    return x+y;
}
int mul(int x,int y){
    return x*y;
}
int max(int x,int y){
    return x>y?x:y;
}
Funlist list[]={
    {"sum",sum},
    {"mul",mul},
    {"max",max}
};

PFUN findFunByName(char *name){
    for (int i=0; i<sizeof(list)/sizeof(list[0]); i++) {
        if (strcmp(list[i].name, name)==0) {
            return list[i].pf;
        }
    }
    return NULL;
}

int getValue(int a,int b,PFUN p){
    if(p!=NULL){
        return p(a,b);
    }else{
            return 0;
    }
}

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
//    
//    
//    printf("%d",getValue(3,5,max));
//    
//    Student stu[5]={{"aa",20},{"hh",19},{"pp",20},{"aaa",100},{"uuu",90}};
//    findStudent(stu, sizeof(stu)/sizeof(stu[0]), changeName);
////    showAll(stu,sizeof(stu)/sizeof(stu[0]));
//    
////    double a=3,b=4;
////    
////    allChangeTwoNum(&a, &b, changeWord);
////    printf("%lf",a);
////    printf("%lf",b);
//    
//    sortArray(stu, sizeof(stu)/sizeof(stu[0]), compareByScore);
//    showAll(stu, sizeof(stu)/sizeof(stu[0]));
    
//    
//    PFUN p = findFunByName("max");
//    int result = getValue(3, 5, p);
//    printf("%d",result);
//    
//    int a,b,c=3;
//    
////    (a=c)||(b=c);
////    printf("%d %d",a,b);
////    (a=c)&&(b=c);
////    printf("%d %d",a,b);
//    
//    printf("%d",2*(N+Y(5-5)));
//
//    int k;
//    printf("%d",k=3);
//
    
//    
//    int i,k;
//    for (i=0,k=-1; k=-1; i++,k++) {
//        printf("*\n");
//    }
    
//    int a,x,y;
//    
//    a=(x=y=30,x=100,y*5,x*y);
//    printf("%d\n",a);
    
    
    
    printf("%f",1.0/2);
    int a;
    a=0x12;
    
    return 0;
}

