//
//  main.m
//  day10
//
//  Created by liushuai on 14-8-30.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>




//《第九讲:高级指针》
//课后题:
//1. (**)写一个函数交换两个结构体变量
//2. (**)有一学生数组写一函数打印出指定分数段的学生信息
//3. (**)有一学生数组,包含5个学生,写一个函数,对学生排序(按学号 从小到大),使用结构体指针操作数组元素
//4. (**)有一学生数组,包含5个学生,写一个函数,对学生排序(按姓名 从小到大),使用结构体指针操作数组元素
//5. (**)有一学生数组,包含5个学生,写一个函数,对学生排序(按分数 从小到大),使用结构体指针操作数组元素


//6. (**)定义一个求圆面积的宏
#define CIRCLEAREA(R) R*R*3.1415926
//7. (**)定义一个求2个数平均数的宏
#define AVG(A,B) (A+B)/2.0

typedef struct student{
    int sno;
    int score;
    char name[20];
}Student;
//1. (**)写一个函数交换两个结构体变量
void swapStudent(Student *stu1,Student *stu2){
    Student stuTemp;
    stuTemp.sno = stu1->sno;
    stuTemp.score = stu1->score;
    strcpy(stuTemp.name, stu1->name);
    
    stu1->sno = stu2->sno;
    stu1->score = stu2->score;
    strcpy(stu1->name, stu2->name);
    
    stu2->sno = stuTemp.sno;
    stu2->score = stuTemp.score;
    strcpy(stu2->name, stuTemp.name);
}
//void swapStudent2(Student **stu1,Student **stu2){
//    Student *stu;
//    stu = *stu1;
//    *stu1 = *stu2;
//    *stu2 = stu;
//}


void init(Student *stu,int size){
    for (int i=0; i<size; i++) {
        //初始化学号
        (stu+i)->sno = arc4random()%1000+20140000;
        //初始化成绩
        (stu+i)->score = arc4random()%50+50;
        //初始化姓名
        int j=0;
        char tempname[10];
        for (; j<4; j++) {
            char x = arc4random()%26+'a';
            tempname[j] = x;
        }
        tempname[j]='\0';
        strcpy((stu+i)->name,tempname);
    }
}

void showAll(Student *stu,int size){
    
    for (int i=0; i<size; i++) {
        printf("%d ",(stu+i)->sno);
        printf("%s ",(stu+i)->name);
        printf("%d ",(stu+i)->score);
        printf("\n");
    }
    printf("\n");
}
void showOne(Student *stu){
    printf("%d ",(stu)->sno);
    printf("%s ",(stu)->name);
    printf("%d ",(stu)->score);
    printf("\n");
}
//2. (**)有一学生数组写一函数打印出指定分数段的学生信息
void showOnScore(Student *stu,int size,int min,int max){
    for (int i=0; i<size; i++) {
        if((stu+i)->score>=min&&(stu+i)->score<=max){
            showOne(stu+i);
        }
    }
}

void sortBySno(Student *stu,int size){
    for (int i=0; i<size; i++) {
        for (int j=0; j<size-1-i; j++) {
            if ((stu+j)->sno>(stu+j+1)->sno) {
                swapStudent(stu+j, stu+j+1);
            }
        }
    }
}
void sortByName(Student *stu,int size){
    for (int i=0; i<size; i++) {
        for (int j=0; j<size-1-i; j++) {
            if(strcmp((stu+j)->name, (stu+j+1)->name)>0){
                swapStudent(stu+j, stu+j+1);
            }
        }
    }
}
void sortByScore(Student *stu,int size){
    for (int i=0; i<size; i++) {
        for (int j=0; j<size-1-i; j++) {
            if ((stu+j)->score>(stu+j+1)->score) {
                swapStudent(stu+j, stu+j+1);
            }
        }
    }
}




int main(int argc, const char * argv[])
{
 
    Student stu[5];
    int size = sizeof(stu)/sizeof(Student);
    init(stu, size);
    showAll(stu, size);
    swapStudent(&stu[0], &stu[1]);
    
//    Student *stu1 = &stu[0];
//    Student *stu2 = &stu[1];
//    
//    swapStudent2(&stu1, &stu2);
    showAll(stu, size);
    
    printf("指定分数段的学生信息\n");
    showOnScore(stu, size, 70, 90);
    printf("按学号排序\n");
    sortBySno(stu, size);
    showAll(stu, size);
    printf("按姓名排序\n");
    sortByName(stu, size);
    showAll(stu, size);
    printf("按成绩排序\n");
    sortByScore(stu, size);
    showAll(stu, size);
    
    
    printf("圆面积%lf\n",CIRCLEAREA(2));
    printf("平均数%lf\n",AVG(2,4));
    
    
    
    return 0;
}

