//
//  main.m
//  day0904
//
//  Created by liushuai on 14-9-4.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    Ox01
//    Ox02
//    Ox03	0000	0000	b
//    Ox04	0000	0000
//    Ox05	0000	0000
//    Ox06	0001	0001
//    Ox07	0001	0001	a
//    Ox08	0000	0000
//    Ox09	0000	0000
//    Ox10	0000	0000
    
//    int a = 17;
//    int b = 285212672;
//    printf("%p\n",&a);
//    printf("%p\n",&b);
//    int *p = &b;
//    printf("%p\n",p);
//    char *pp = (char *)p;
//    pp+=3;
//    int *m =(int *)pp;
//    printf("%p\n",m);
//    printf("%d",*m);
    
    
//    int *p = NULL;
//    printf("%p",p);
    
//    char *p[10] = {" "," "};
//    int (*pp)[10];
//    for (int i=0; i<10; i++) {
//        printf("%d,%p\n",i,&pp[i]);
//    }
    
    
    double *head = NULL;
    double salary = 8000.75;
    head = &salary;
    printf("%p\n",&salary);
    printf("%p\n",head);
    printf("%lf\n",salary);
    printf("%lf\n",*head);
    double *tail = NULL;
    tail = head;
    printf("%lf\n",*tail);
    *tail = 3023.25;
    printf("%lf\n",*head);
    int age = 28;
    head = &age;
    printf("%d\n",*head);
    *tail+=100;
    printf("%lu\n",sizeof(salary));
    printf("%lu\n",sizeof(head));
    printf("%lu\n",sizeof(tail));
    printf("%lf",DBL_MAX);
    
    
    
    
    
    
    
    
    
    
    return 0;
}

