//
//  main.m
//  day0909c
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int numCount(char str[]){
    int count = 0;
    for (int i=0; str[i]!='\0'; i++) {
        if(str[i]>='0'&&str[i]<='9'){
            count++;
        }
    }
    return count;
}

int *num(char str[]){
    int *p = malloc(numCount(str)*sizeof(int));
    for (int i=0,j=0; i<strlen(str); i++) {
        if (isdigit(str[i])) {
            *(p+j) = str[i]-'0';
            j++;
        }
    }
    return p;
}

void strings(char *str[]){
    
}


int main(int argc, const char * argv[])
{
//    //函数内的变量一般存在栈区
//    int number = 3;
//    printf("%p\n",&number);
//    
//    
//    char *p = malloc(8);
//    printf("%p\n",p);
//    
//    static int number1 = 3;
//    //静态变量存在于静态区
//    printf("%p\n",&number1);
//    //常量存在于常量区
//    char *str = "ddd";
//    printf("%p\n",str);
//    //函数代码放在代码区
//    printf("%p\n",testfun);
    
    
//    char s[20];
//    scanf("%s",s);
//    int len = numCount(s);
//    int *p = num(s);
//    for (int i=0; i<len; i++) {
//        printf("%d",*(p+i));
//    }
    
    
//    char *name[3]={0};
//    char str[20];
//    for (int i=0; i<3; i++) {
//        scanf("%s",str);
//        int size = sizeof(str);
//        name[i] = malloc(sizeof(char)*size);
//        for (int j=0; j<size-1; j++) {
//            *(name[i]+j) = str[j];
//        }
//    }
//    for (int i=0; i<3; i++) {
//        printf("%s\n",name[i]);
//    }
//    for (int i=0; i<3; i++) {
//        free(name[i]);
//    }
    
    
    int *num1,*num2;
    num1 = malloc(sizeof(int)*3);
    num2 = calloc(sizeof(int), 3);
    num1 =memset(num1, 0, sizeof(int)*3);
    for (int i=0; i<3; i++) {
        *(num1+i) = arc4random()%2+1;
        *(num2+i) = arc4random()%2+1;
    }
    if(memcmp(num1, num2, 3)){
        printf("GOOD");
    }else{
        printf("Failed");
    }
    
    
    
    
    return 0;
}

