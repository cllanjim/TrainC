//
//  main.m
//  day12
//
//  Created by liushuai on 14-9-1.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//
#import <Foundation/Foundation.h>

//《第十一讲:函数指针》
//课后题:
//1.(***)随机生成一个 10 个元素的数组,找到 3 的倍数,并将其值修改成 0.(注意:修改数值使用回掉函数处理)
//2. (***)有两个10个元素的数组,分别为A和B,编程实现相同位置的元素, 如果 B 的元素小于 A 的元素进行数值交换:(使用回调函数实现)

typedef void (*CHANGEFUN)(int*);
typedef void (*RULEFUN)(int*,int*);
//初始化数组
void init(int *a,int size){
    for (int i=0; i<size; i++) {
        *(a+i) = arc4random()%100;
    }
}
//打印数组 并换行
void show(int *a,int size){
    for (int i=0; i<size; i++) {
        printf("%d ",*(a+i));
    }
    printf("\n");
}
void findThreeNumToChange(int *a,int size,CHANGEFUN pfun){
    for (int i=0; i<size; i++) {
        if(*(a+i)%3==0){
            pfun(a+i);
        }
    }
}
void changeToZero(int *x){
    *x = 0;
}

void onSameArrayFlag(int *x1,int *x2,int size,RULEFUN pfun){
    for (int i=0; i<size; i++) {
        pfun(x1+i,x2+i);
    }
}

void change(int *a,int *b){
    if(*a>*b){
        int temp = *a;
        *a = *b;
        *b = temp;
    }
}



int main(int argc, const char * argv[])
{
    int a[10];
    init(a, 10);
    show(a, 10);
    findThreeNumToChange(a, 10, changeToZero);
    show(a, 10);
    //
    printf("第二问生成数组\n");
    int x1[10],x2[10];
    init(x1, 10);
    init(x2, 10);
    show(x1, 10);
    show(x2, 10);
    printf("数组相同位置比较更换\n");
    onSameArrayFlag(x1, x2, 10, change);
    show(x1, 10);
    show(x2, 10);
    
    return 0;
}

