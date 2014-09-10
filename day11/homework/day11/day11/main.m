//
//  main.m
//  day11
//
//  Created by liushuai on 14-9-1.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
//《第十讲:动态内存分配》
//课后题:
//1. (**)输入一个数组长度,动态创建数组,所有元素随机生成,输出元素
//中的最大值。


//int main(int argc, const char * argv[])
//{
//    int n;
//    printf("输入数组长度\n");
//    scanf("%d",&n);
//    int *a = malloc(sizeof(int)*n);
//    for (int i=0; i<n; i++) {
//        *(a+i) = arc4random()%100;
//        printf("%d ",*(a+i));
//    }
//    int max =0;
//    for (int i=0; i<n; i++) {
//        if(i==0||max<*(a+i))
//            max=*(a+i);
//    }
//    printf("max=%d",max);
//    free(a);
//    return 0;
//}














//2. (***)已知一个数组 20 个元素(随机 1 到 100 之间包含 1 和 100),求大
//于平均数的元素个数,并动态生成一个新数组保存(提示:malloc 出 20 个元素保存)


//int main(){
//    int *a = malloc(sizeof(int)*20);
//    int sum = 0;
//    for (int i=0; i<20; i++) {
//        *(a+i) = arc4random()%100+1;
//        printf("%d ",*(a+i));
//        sum = sum + *(a+i);
//    }
//    double avg = 0.0;
//    avg = sum/20.0;
//    //printf("平均数为avg = %lf\n",avg);
//    int count;
//    int *result = malloc(sizeof(int));
//    printf("result初始的地址%ld\n",(long)result);
//    for (int i=0,j; i<20; i++) {
//        if(*(a+i)>avg){
//            //已找到平均值 给已分配的result的制定位置
//            *(result+j) = *(a+i);
//            //重新分配空间增加result长度
//            result = realloc(result, sizeof(int)*(i+1));
//            //printf("result的地址%ld\n",(long)result);
//            //统计平均数总数
//            count++;
//            //控制要写入result的指定位置
//            j++;
//        }
//    }
//    for (int i=0; i<count; i++) {
//        printf("%d ",*(result+i));
//    }
//    free(result);
//    return 0;
//}





//查找单词 返回单词的首地址      参数1 从该地址开始搜索单词 参数2 单词长度的首地址
char *findWord(char *flag,int *wordLength){
    int i=0;
    int count = 0;
    char *word = NULL;
    while (*(flag+i)!='\0') {
        
        if(*(flag+i)!=' '){
            if (count==0) {
                word = flag+i;
            }
            count++;
        }
        if(*(flag+i)==' '){
            if (count==0) {
                i++;
                continue;
            }
            break;
        }
        i++;
        if (*(flag+i)=='\0') {
            *wordLength = count;
            return word;
        }
        
    }
    *wordLength = count;
    return word;
}








//3. (****)有一段文本,将文本中的所有单词,存放到一个字符串数组中。 (要求占用内存最少)

int main(){
    
    char *str;
    gets(str);
    printf("%s\n",str);
    int wordLength =0;
    char *w = str;
    int size =0;//记录单词数组总共开辟空间大小
    char *words = NULL;
    int wordCount=0;
    while(w!=NULL){
        w = findWord(w+wordLength, &wordLength);
        if (w==NULL) {
            break;
        }
        wordCount++;
        for (int i=0; i<wordLength; i++) {
            printf("%c",*(w+i));
        }
        
        //发现第一个单词 开辟存单词的空间 和存单词首地址的空间
        if(w==str){
            words = malloc(sizeof(char)*wordLength+1);
            //赋值
            memcpy(words, w, wordLength);
            *(words+wordLength) = '\0';
            size = size+wordLength+1;
        }else{
            //重新分配内存大小为单词开辟空间
            words = realloc(words, sizeof(char)*(size+wordLength+1));
            //赋值
            memcpy(words+size, w, wordLength);
            *(words+size+wordLength) = '\0';
            size = size+wordLength+1;
            
        }
        printf("\n");
    }
    
    //定义指针数组 分别指向单词的首地址
    char **strings = malloc(sizeof(char *)*wordCount);
    int flagc = 0;//记录当前已经移动到第几个单词
    int length = 0;//记录当前单词的长度
    int j=0;
    int i=0;
    while (flagc<wordCount) {
        if(words[i]!='\0'){
            length++;
        }
        else{
            flagc+=1;
            strings[j]=words+i-length;
            length = 0;
            j++;
        }
        i++;
    }
    
    printf("结果\n");
    for (int i=0; i<wordCount; i++) {
        printf("%s ",strings[i]);
    }
    
    free(strings);
    free(words);
    
    
    return 0;
}
































