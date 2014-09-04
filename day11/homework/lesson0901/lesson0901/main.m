//
//  main.m
//  lesson0901
//
//  Created by liushuai on 14-9-1.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int change(const int a,const int b){
    return a>b;
}

int main(int argc, const char * argv[])
{
//    int a[20];
//    for (int i=0; i<20; i++) {
//        a[i] = arc4random()%10+10;
//        printf("%d ",a[i]);
//    }
//    printf("\n");
//    for (int i=0; i<20; i++) {
//        for (int j=0; j<20-1-i; j++) {
//            if(a[j]>a[j+1])
//            {
//                int temp = a[j];
//                a[j] = a[j+1];
//                a[j+1] = temp;
//            }
//        }
//    }
//    for (int i=0; i<20; i++) {
//        printf("%d ",a[i]);
//    }
//    
//    
//    int a[4][4],b[4][4];
//    for (int i=0; i<4; i++) {
//        for (int j=0; j<4; j++) {
//            a[i][j] =arc4random()%10+10;
//        }
//    }
//    for (int i=0; i<4; i++) {
//        for (int j=0; j<4; j++) {
//            printf("%2d ",a[i][j]);
//        }
//        printf("\n");
//    }
//    printf("\n");
//    for (int i=0; i<4; i++) {
//        for (int j=0; j<4; j++) { 
//            b[i][j] =a[j][i];
//        }
//    }
//    printf("\n");
//    for (int i=0; i<4; i++) {
//        for (int j=0; j<4; j++) {
//            printf("%2d ",b[i][j]);
//        }
//        printf("\n");
//    }
//    
//    
//    int max = 0;
//    int row = 0,column = 0;
//    for (int i=0; i<4; i++) {
//        for (int j=0; j<4; j++) {
//            if((i==0&&j==0)||max<a[i][j]){
//                max = a[i][j];
//                row = j;
//                column = i;
//            }
//        }
//    }
//    printf("max = %d, row = %d, column = %d",max,row,column);
    
    const int a;
    
    int x = change(10, 20);
    
    printf("%d",x);
    
    return 0;
}

