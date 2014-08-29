//
//  main.m
//  lesson5
//
//  Created by liushuai on 14-8-29.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    char str[] = {'p','p','p','p'};
//    char str1[] = {'i','p','h','o','n','e'};
//    char str2[] = "iphone";
//    char str3[1000] = "iphone";
//    printf("%lu",strlen(str2));
//    
//    char s[]="i love ios hahahaha ";
//    int i=0,count=0;
//    while (s[i]!='\0') {
//        if(s[i]==' '){
//            count++;
//        }
//        i++;
//    }
//    printf("%d",count);
    
    char s[] = "helloh";
    int x=(int)strlen(s);
    for (int i=0,j=x-1; i<=x/2; i++,j--) {
        char temp = s[i];
        s[i] = s[j];
        s[j] = temp;
    }
    puts(s);
    return 0;
}

