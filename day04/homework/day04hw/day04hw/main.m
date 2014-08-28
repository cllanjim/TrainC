//
//  main.m
//  day04hw
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    《第 03 讲:循环结构》
//    1.(**)随机产生20个[10 , 100]的正整数,输出这些数以及他们中的最大
//    数
    
    
//    int max=0;
//    for (int i=0; i<20; i++) {
//        int x=((rand()+10)%100)+1;
//        printf("case:%d\n",x);
//        if(i==0||x>max){
//            max=x;
//        }
//    }
//    printf("max:%d\n",max);
    
    
    
//    2. (**)编程将所有“水仙花数”打印出来,并打印其总个数。 “水仙花数” 是一个 各个位立方之和等于该整数的三位数。

//    for (int i=100; i<=999; i++) {
//        if(pow(i/100, 3)+pow(i/10%10, 3)+pow(i%10, 3)==i){
//            printf("%d是水仙花数\n",i);
//        }
//    }
    
    
    
//    3.(**)已知abc+cba = 1333,其中a,b,c均为一位数,编程求出满足条件的 a,b,c 所有组合
    
    
    
//    for (int a=0; a<=9; a++) {
//        for (int b=0; b<=9; b++) {
//            for (int c=0; c<=9; c++) {
//                if((a*100+b*10+c)+(c*100+b*10+a)==1333){
//                    printf("%d %d %d\n",a,b,c);
//                }
//                   
//            }
//        }
//    }
    
    
//    4. (***)输入两个数,求最大公约数和最小公倍数。(用两种方法:辗转 相除法和普通方法)
    
//    辗转相除法求两个数的最大公约数的步骤如下：
//    先用小的一个数除大的一个数，得第一个余数；
//    再用第一个余数除小的一个数，得第二个余数；
//    又用第二个余数除第一个余数，得第三个余数；
    
    
//    int x1,x2,r;
//    scanf("%d%d",&x1,&x2);
//    int ji = x1*x2;
//    if(x1>=x2){
//        r=x1%x2;
//    }else{
//        r = x1;
//        x1 = x2;
//        x2 = r;
//        r=x1%x2;
//    }
//    while (r!=0) {
//        x1=x2;
//        x2=r;
//        r=x1%x2;
//    }
//    int gcdnum = x2;
//    printf("最大公约数%d，最小公倍数%d\n",gcdnum,ji/gcdnum);
    
    
//    int x1,x2;
//    scanf("%d%d",&x1,&x2);
//    if (x1<x2) {
//        int temp = x1;
//        x1 = x2;
//        x2 = temp;
//    }
//    
//    
//    for (int i=x2; i>=1; i--) {
//        if(x2%i==0&&x1%i==0){
//            printf("最大公约数%d，最小公倍数%d\n",i,x1*x2/i);
//            break;
//        }
//    }
    
    
    
    
    
//    5. (***)一个球从100m高度自由落下,每次落地后反跳回原来高度的一 半,再落下,再反弹。求它在第 10 次落地时,多少米?第 10 次反
//    弹多高
//    double high = 100.0;
//    int i;
//    for (i=0; i<10; i++) {
//        high = high/2;
//        
//    }
//    printf("case:第%d次落地%.2lf\n",i,high*2);
//    printf("case:第%d次反弹%.2lf\n",i,high);
    
    
//    6. (****)输入 n,分别用*输出边长为 n 的实心菱形和空心菱形。
//    例如:n = 3 时,输出:
//    
//    int n;
//    scanf("%d",&n);
//    //上三角
//    for (int i=1; i<=n; i++) {
//        for(int j=1;j<=n-i;j++){
//            printf(" ");
//        }
//        for (int j=1; j<=i*2-1; j++) {
//            printf("*");
//        }
//        printf("\n");
//    }
//    //下三角
//    for (int i=1; i<=n-1; i++) {
//        
//        for (int k=1; k<=i; k++) {
//            printf(" ");
//        }
//        
//        for (int k=1; k<=(n-i)*2-1; k++) {
//            printf("*");
//        }
//        printf("\n");
//    }
//    
//    
//    int n;
//    scanf("%d",&n);
//    //上三角
//    for (int i=1; i<=n; i++) {
//        for(int j=1;j<=n-i;j++){
//            printf(" ");
//        }
//        for (int j=1; j<=i*2-1; j++) {
//            if (j==1||j==i*2-1) {
//                printf("*");
//            }else{
//                printf(" ");
//            }
//            
//        }
//        printf("\n");
//    }
//    //下三角
//    for (int i=1; i<=n-1; i++)
//    {
//        
//        for (int k=1; k<=i; k++)
//        {
//            printf(" ");
//        }
//        
//        for (int k=1; k<=(n-i)*2-1; k++)
//        {
//            if (k==1||k==(n-i)*2-1) {
//                printf("*");
//            }else{
//                printf(" ");
//            }
//        }
//        printf("\n");
//    }
    
    
    
    
    
//  7.(****)反复校验用户输入的生日,包括年、月、日。直到年、月、日
//    都合法。
    
    
    printf("请按照此方式输入生日1992-04-03");
    int year,month,day;
    while (scanf("%d-%d-%d",&year,&month,&day)!=EOF) {
        //判断年份
        if(year<=0){
            printf("wrong");
            continue;
        }
        //判断月份
        if(month<=0||month>=13){
            printf("wrong");
            continue;
        }
        //判断日期
        if(day<=0){
            printf("wrong");
            continue;
        }
        int flag = 1;
        switch (month) {
            case 1:
                if(day>31){
                    flag = 0;
                }
                break;
            case 2:
                if((year/4==0&&year/100!=0)||(year/400==0)){
                    if(day>29){
                        flag = 0;
                    }

                }else{
                    if (day>28) {
                        flag = 0;
                    }
                }
                break;
            case 3:
                if(day>31){
                    flag = 0;
                }
                break;
            case 4:
                if(day>30){
                    flag = 0;
                }
                break;
            case 5:
                if(day>31){
                    flag = 0;
                }
                break;
            case 6:
                if(day>30){
                    flag = 0;
                }
                break;
            case 7:
                if(day>31){
                    flag = 0;
                }
                break;
            case 8:
                if(day>31){
                    flag = 0;
                }
                break;
            case 9:
                if(day>30){
                    flag = 0;
                }
                break;
            case 10:
                if(day>31){
                    flag = 0;
                }
                break;
            case 11:
                if(day>30){
                    flag = 0;
                }
                break;
            case 12:
                if(day>31){
                    flag = 0;
                }
                break;
                
            default:
                flag=0;
        }
        if(flag==0){
            printf("wrong");
            continue;
        }
        printf("right");
    }
    
    
    
    
    
    return 0;
}

