//
//  main.m
//  lesson01
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int comp(int *a,int *b)
{
    return*(int*)a-*(int*)b;
}

int main(int argc, const char * argv[])
{
//    printf("HI,ios");
//    int a=5,b=111;
//    b=a-b;
//    a=a-b;
//    b=b+a;
//    printf("%d %d\n",a,b);
//    a=a^b;
//    b=b^a;
//    a=a^b;
//    printf("%d %d\n",a,b);
//    int temp = 0;
//    temp = a;
//    a=b;
//    b=temp;
//    printf("%d %d\n",a,b);
//    float a = 33.33;
//    //字节
//    int dd = 3;
//    printf("char:%d",dd);
//    printf("char:%ld",sizeof(int));
//    int x = 65;
//    printf("%p\n",&x);
//    int *p= &x;
//    short m=*(p+4);
//    printf("%c",m);


//    int x = 285212705;
//    printf("%c\n",x);
//    return 0;
    
//    int number1,number2;
//    scanf("%d%d",&number1,&number2);
//    printf("%d",number1+number2);
//    for (int i=0; i<10; i++) {
//        printf("%d",i);
//    }
    
//    char a,b;
//    scanf("%c %c",&a,&b);
//    //getchar();
//    printf("%c %c",a,b);
    
    
    int a[] = {8,1,2,3,6,4,8,5,1};
    qsort(a, sizeof(a)/sizeof(int),sizeof(int) , comp);
    for (int i=0; i<sizeof(a)/sizeof(int); i++) {
        printf("%d",a[i]);
    }
    
    
    
}

