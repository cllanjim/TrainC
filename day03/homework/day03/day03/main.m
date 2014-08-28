//
//  main.m
//  day03
//
//  Created by liushuai on 14-8-26.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //    1.(*)输入一个整数,判断奇偶,并输出“某某是奇数”或者“某某是偶数” 。
    
    //    int x;
    //    scanf("%d",&x);
    //    if(x%2==0)
    //    {
    //        printf("%d是偶数",x);
    //    }else
    //    {
    //        printf("%d是奇数",x);
    //    }
    
    
    
    //    2.(*)输入一个数,判断符号。如果大于 0,输出“正数”;如果小于 0,输 出“负数”;如果等于 0,输出“0”。
    
    //    int x;
    //    scanf("%d",&x);
    //    if(x>0){
    //        printf("正数");
    //    }else if(x<0){
    //        printf("负数");
    //    }else{
    //        printf("0");
    //    }
    
    //    3.(***)输入生日,输出年龄(周岁)和星座。
    
    
    
//    int year;
//    printf("请输入出生年月日,例如19930410\n");
//    while(scanf("%d",&year)!=EOF)
//    {
//        printf("你今年已经%d的高龄了\n",2014-year/10000);
//        int temp = year%10000;
//        if(temp>=321&&temp<=419)
//        {
//            printf("白羊座");
//        }else if(temp>=420&&temp<=520){
//            printf("金牛座");
//        }else if(temp>=521&&temp<=621){
//            printf("双子座");
//        }else if(temp>=622&&temp<=722){
//            printf("巨蟹座");
//        }else if(temp>=723&&temp<=822){
//            printf("狮子座");
//        }else if(temp>=823&&temp<=922){
//            printf("处女座");
//        }else if(temp>=923&&temp<=1023){
//            printf("天平座");
//        }else if(temp>=1024&&temp<=1122){
//            printf("天蝎座");
//        }else if(temp>=1123&&temp<=1221){
//            printf("射手座");
//        }else if((temp>=1222&&temp<=1231)||(temp>=101&&temp<=119)){
//            printf("摩羯座");
//        }else if(temp>=120&&temp<=218){
//            printf("水平座");
//        }else if(temp>=219&&temp<=320){
//            printf("双鱼座");
//        }
//    }
    
    
    
    
    
    
//    4.(**)编程判断 3 人中谁的年龄最大,并打印最大者的年龄
    
//    int boy1,boy2,boy3;
//    scanf("%d%d%d",&boy1,&boy2,&boy3);
//    int max = boy1;
//    if(max<boy2){
//        max = boy2;
//    }
//    if(max<boy3){
//        max = boy3;
//    }
//    printf("max:%d",max);
    
    
//    5.(**)铁路托运行李规定:行李重不超过 50 公斤的,托运费按 0.15 元每 公斤计算,如果超过 50 公斤,超出部分每公斤加收 0.1 元。编程实现上述功能
    
    
//    int x;
//    printf("请输入行李重量\n");
//    scanf("%d",&x);
//    double money;
//    if(x>50){
//        money = (x-50)*0.1+50*0.15;
//    }else{
//        money = 50*0.15;
//    }
//    printf("您应该交费用%.2lf元",money);
    
    
    
    //    6.(**)有一个函数:x<1 的时候,y = x;1<=x<10 的时候,y=2x-1; x>=10 的时候,y=3x-11。写一段程序,输入 x,输出 y 值
    
//    int x,y;
//    scanf("%d",&x);
//    if (x<1) {
//        y=x;
//    }else if(x>=10){
//        y=3*x-11;
//    }else{
//        y=2*x-1;
//    }
//    printf("%d",y);
    
    //    7.(**)编制一个完成两个数四则运算程序。如:用户输入 34+56 则输出结 果为 90.00,要求运算结果保留 2 位有效小数,用户输入时将 2 个运算数以及
    
//    double a,b;
//    char ch;
//    double count=0.00;
//    while(scanf("%lf%c%lf",&a,&ch,&b)!=EOF)
//    {
//        switch (ch) {
//            case '+':
//                count = a+b;
//                break;
//            case '-':
//                count = a-b;
//                break;
//            case '*':
//                count = a*b;
//                break;
//            case '/':
//                count = a/b;
//                break;
//                
//            default:
//                printf("输入符号不正确");
//                return 0;
//        }
//        printf("%.2lf",count);
//    }
    
    
    // 8.(***)输入 3 个数,判断是否能构成三角形
    
//    int a,b,c;
//    scanf("%d%d%d",&a,&b,&c){
//        if(a+b>c&&a+c>b&&b+c>a){
//            printf("是三角形");
//        }else{
//            prinf("不是三角形");
//        }
//    }
    
    
    //    9.(****)输入三个数,用两种方法打印出中间值(即第二大值) 提示:第一种,先求最大最小;第二种,只使用条件运算符
//fouction 1:
//    int x1,x2,x3;
//    scanf("%d%d%d",&x1,&x2,&x3);
//    int max,min,middle;
//    max=min=middle=x1;
//    if(x2>max){
//        max=x2;
//    }
//    if(x3>max){
//        max=x3;
//    }
//    if(x2<min){
//        min=x2;
//    }
//    if(x3<min){
//        min=x3;
//    }
//    middle = x1+x2+x3-max-min;
//    printf("middle：%d",middle);
//fouction 2:
//    int x1,x2,x3;
//    scanf("%d%d%d",&x1,&x2,&x3);
//    //在第一位
//    if((x2<x1&&x3>x1)||(x2>x1&&x3<x1)){
//        printf("%d",x1);
//    }
//    //在第二位
//    if((x1<x2&&x3>x2)||(x1>x2&&x3<x2)){
//        printf("%d",x2);
//    }
//    //在第三位
//    if((x1<x3&&x2>x3)||(x1>x3&&x2<x3)){
//        printf("%d",x3);
//    }
    
    
    
    return 0;
}

