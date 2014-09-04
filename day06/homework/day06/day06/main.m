//
//  main.m
//  day06
//
//  Created by liushuai on 14-8-27.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[])
//{
//    return 0;
//}
//1、(**)有一个 3 行 4 列的二维数组,要求编程找出最大的元素,并输出 所在的行和列。


//int main(){
//    int a[3][4];
//    for(int i=0;i<3;i++)
//        for (int j=0; j<4; j++) {
//            a[i][j] = rand()%100;
//        }
//    printf("初始化的数组为:\n");
//    for(int i=0;i<3;i++){
//        for (int j=0; j<4; j++) {
//            printf("%d ",a[i][j]);
//        }
//        printf("\n");
//    }
//    int max=0;
//    for(int i=0;i<3;i++)
//        for (int j=0; j<4; j++) {
//
//            if ((i==0&&j==0)||(a[i][j]>max)) {
//                max = a[i][j];
//            }
//            a[i][j] = rand()%1000;
//        }
//
//    printf("%d",max);
//
//}




//2、(**)输入 6 个字符串,并对它们按从小到大的顺序排序后输出。


//int main()
//{
//    char strings[6][100];
//    for (int i=0; i<6; i++) {
//        scanf("%s",strings[i]);
//    }
//    printf("输入的字符串数组为:\n");
//    for (int i=0; i<6; i++) {
//        printf("%s\n",strings[i]);
//    }
//
//    for (int i=0; i<6; i++) {
//        for (int j=0; j<6-i-1; j++) {
//            if (strcmp(strings[j], strings[j+1])>0) {
//                char temp[100];
//                strcpy(temp,strings[j]);
//                strcpy(strings[j],strings[j+1]);
//                strcpy(strings[j+1],temp);
//            }
//        }
//    }
//    printf("排序后字符串数组为:\n");
//    for (int i=0; i<6; i++) {
//        printf("%s\n",strings[i]);
//    }
//
//
//    return 0;
//}





//3、(****)找出一个二维数组中的“鞍点”,即该位置上的元素在该行中 最大,在该列中最小(也可能没有“鞍点”),打印有关信息。(提示:注意特 殊情况:没鞍点或多个鞍点)

int main(){
    
    int num[4][4];
    int h[5],v[5];//存放行最大和列最小的值
    for(int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
            scanf("%d",&num[i][j]);
        }
    }
    for (int i=0 ; i<4; i++) {
        int max=0;
        int min=0;
        for (int j=0; j<4; j++) {
            //找行最大值
            if(j==0||max<num[i][j]){
                max = num[i][j];
            }
            //找列最小值
            if(j==0||min>num[j][i]){
                min = num[j][i];
            }
        }
        h[i]=max;
        v[i]=min;
    }
    printf("行数的最大值数组\n");
    for (int i=0;i<4;i++) {
        printf("%d ",h[i]);
    }
    printf("\n");
    printf("列数的最小值数组\n");
    for (int i=0;i<4;i++) {
        printf("%d ",v[i]);
    }
    for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
            if (num[i][j]==h[j]&&num[i][j]==v[j]) {
                printf("%d,%d是鞍点%d\n",i,j,num[i][j]);
            }
        }
    }
    
    return 0;
}






//4、(**)随机生成一个三维数组,编程求深度的平均值,保存在一个二维数 组中(相当于一个模仿从上面看)。
//int main(){
//    int a[3][3][3] = {0};
//    for (int i = 0; i < 3; i++) {
//        for (int j = 0; j < 3; j++) {
//            for (int k = 0; k < 3; k++) {
//                a[i][j][k] = arc4random()%100;
//            }
//        }
//    }
//    int sum = 0;
//    float b[3][3] = {0};
//    for (int i = 0; i < 3; i++) {
//        for (int j = 0; j < 3; j++) {
//            for (int k = 0; k < 3; k++) {
//                sum += a[i][j][k];
//            }
//            b[i][j] = sum / 3.0;
//            printf("%.2f\n",b[i][j]);
//            sum = 0;
//        }
//    }    return 0;
//}





