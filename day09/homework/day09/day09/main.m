//
//  main.m
//  day09
//
//  Created by liushuai on 14-8-30.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>


//第八讲:指针》
//1. (**)编写一个函数,交换 2 个浮点数。
//1. (***)在主函数中输入6个字符串(二维数组),对他们按从小到大的 顺序,然后输出这 6 个已经排好序的字符串。要求使用指针数组进行处理。
//2. (****)面试题: 有一字符串中包含数字与字符,请编程去除数字

//1. (**)编写一个函数,交换 2 个浮点数。
//void swap(double *a,double *b){
//    int temp = *b;
//    *b = *a;
//    *a = temp;
//}
//
//
////1. (***)在主函数中输入6个字符串(二维数组),对他们按从小到大的 顺序,然后输出这 6 个已经排好序的字符串。要求使用指针数组进行处理。
//
//void sortStrArray(char str[6][20]){
//    for (int i=0; i<6; i++) {
//        for (int j=0; j<6-1-i; j++) {
//            if(strcmp(*(str+j), *(str+j+1))<0){
//                char temp[20];
//                strcpy(temp, *(str+j));
//                strcpy(*(str+j), *(str+j+1));
//                strcpy(*(str+j+1), temp);
//            }
//        }
//    }
//}
//
//void sortStrArrayByPointer(char *str[6]){
//    for (int i=0; i<6; i++) {
//        for (int j=0; j<6-1-i; j++) {
//            if(strcmp(*(str+j), *(str+j+1))>0){
//                char temp[20];
//                strcpy(temp, *(str+j));
//                strcpy(*(str+j), *(str+j+1));
//                strcpy(*(str+j+1), temp);
//            }
//        }
//    }
//}
//
//
//int main(int argc, const char * argv[])
//{
//    double a,b;
//    a = 3.0;
//    b = 4.0;
//    printf("交换前 %.2lf %.2lf\n",a,b);
//    swap(&a, &b);
//    printf("交换后 %.2lf %.2lf\n",a,b);
//    
//    char str[6][20];
//    
//    for (int i=0; i<6; i++) {
//        printf("str[%d]的地址为 %ld\n",i,(long)str[i]);
//    }
//    
//    for (int i=0; i<6; i++) {
//        scanf("%s",str[i]);
//    }
//    sortStrArray(str);
//    
//    for (int i=0; i<6; i++) {
//        printf("%s\n",str[i]);
//    }
//    printf("\n");
//    
//    
//    //定义指针数组
//    char *strp[6];
//    //将二维数组中的每个首地址的值给指针数组
//    for (int i=0; i<6; i++) {
//        strp[i] = str[i];
//    }
//    //将指针数组首地址传入
//    sortStrArrayByPointer(strp);
//    //输出排序结果
//    for (int i=0; i<6; i++) {
//        printf("%s\n",str[i]);
//    }
//    
//    
//    
//    
//    return 0;
//}






























void removeDigit(char *dest,char *src){
    int i=0;
    int j=0;
    while(*(src+i)!='\0'){
        if (!(*(src+i)>='0'&&*(src+i)<='9')) {
            *(dest+(j++)) = *(src+i);
        }
        i++;
    }
    *(dest+j) = '\0';
}
void removeDigit2(char *src){
    int j=0;
    for (int i=0; *(src+i)!='\0'; i++) {
        if (!(*(src+i)>='0'&&*(src+i)<='9')) {
            *(src+j) = *(src+i);
            j++;
        }
    }
    *(src+j) = '\0';
}

int main(){
    
    
    char s[] = "I 12l234o4ve p345r53o4g345ra345mm5i4n5g,I 345w534an534t5 to 4be a345 G5e4e4k!";
//    char dest[]={};
//    removeDigit(dest,s);
    removeDigit2(s);
    printf("%s",s);
    
    return 0;
}









