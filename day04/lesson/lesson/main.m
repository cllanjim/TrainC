//
//  main.m
//  lesson
//
//  Created by liushuai on 14-8-28.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

//    int a = 3;
//    int sum = (++a)+(a++)+(++a);
    
    
//    int i=0;
//    while (i<=100) {
//        if(i%10==7)
//            printf("%d ",i);
//        i++;
//    }
//    i=0;
//    while (i<=100) {
//        if(i/10==7)
//            printf("%d ",i);
//        i++;
//    }
//    i=0;
//    while (i<=100) {
//        if(i%10!=7&&i/10!=7&&i%7!=0){
//            printf("%d",i);
//        }
//    }
    
//    int n;
//    scanf("%d",&n);
//    for (int i=0; i<n; i++) {
//        int m = arc4random()%21+10;
//        printf("%d ",m);
//    }
    
//    int n;
//    scanf("%d",&n);
//    for (int i=0; i<n; i++) {
//        int sum=0;
//        sum = sum+arc4random ()%21+10;
//        printf("%d ",sum);
//    }
    
//    int n;
//    scanf("%d",&n);
//    int max = 0;
//    for (int i=0; i<n; i++) {
//        
//        int temp = arc4random()%21+10;
//        printf("%d ",temp);
//        if (i==0||temp>max) {
//            max = temp;
//            break;
//        }
//    }
//    printf("\n");
//    printf("%d",max);
//    
//    do {
//        printf("aa");
//    } while (1);
    for (int i=0; i<101; i++) {
        if (i/10==7) {
            printf("%d ",i);
        }
        //printf(" ");
    }
    for (int i=1; i<101; i++) {
        printf("%d",i);
    }
    for (int i=0; i<101; i++) {
        for (int j=0; j<101; j++) {
            printf("%d",i);
        }
    }
    
    
    
    
    return 0;
}

