////
////  main.m
////  day05
////
////  Created by liushuai on 14-8-27.
////  Copyright (c) 2014年 Liushuai. All rights reserved.
////
//
#import <Foundation/Foundation.h>
#define SIZE 10
////1. (*)先调试,调试成功后抄写下列程序:
////#include <stdio.h>
////#define SIZE 10
////int main(int argc, char *argv[]) {
////    int a[SIZE] = {0},i= 0; for(i = 0; i < SIZE; i++){
////        a[i] = i+10;
////        printf("a[%d] = %d\n", i, a[i]); }
////    return 0; }
//
//int main(int argc, const char * argv[])
//{
//    int a[SIZE]={0},i=0;
//    for (i=0; i<SIZE; i++) {
//        a[i]=i+10;
//        printf("a[%d]=%d\n",i,a[i]);
//    }
//    //2. (*)将第一题中的数组 a 反向输出。
//    for (int i=SIZE-1; i>=0; i--) {
//        printf("%d ",a[i]);
//    }
//    printf("\n");
//    //3. (*)对第一题中的数组进行求和操作,打印计算结果。
//    int sum=0;
//    for (int i=0; i<SIZE; i++) {
//        sum = sum+a[i];
//    }
//    printf("sum:%d",sum);
//    printf("\n");
//    //4. (**)计算第一题数组连减,打印计算结果。
//    int count = a[0];
//    for (int i=1; i<SIZE; i++) {
//        count = count-a[i];
//    }
//    printf("%d\n",count);
//    
//    
//    
//    return 0;
//}
//5. (**)随机产生20个10~50的正整数存放到数组中,并求数组中的多有 元素最大值、最小值、平均值及各元素之和。

//int main()
//{
//    int a[20],sum=0,max=0,min=0;
//    for (int i=0; i<20; i++) {
//        int temp = (rand()+10)%50+1;
//        a[i] = temp;
//        if(i==0){
//            max=min=temp;
//        }
//        if(temp>max){
//            max = temp;
//        }
//        if(temp<min){
//            min =temp;
//        }
//        sum = sum+a[i];
//    }
//    printf("max:%d",max);
//    printf("min:%d",min);
//    printf("sum:%d",sum);
//    printf("avg:%.2lf",sum/20.0);
//    return 0;
//}
//6. 编写一个程序,输入两个包含5个元素的数组,先将两个数组升序排序,然 后将这两个数组合并成一个升序数组。
//int main(){
//    
//    int a[5],b[5],c[10];
//    printf("input a[] size 5\n");
//    for (int i=0; i<5; i++) {
//        scanf("%d",&a[i]);
//    }
//    printf("input b[] size 5\n");
//    for (int i=0; i<5; i++) {
//        scanf("%d",&b[i]);
//    }
//    printf("\n");
////    printf("a  b\n");
////    for (int i=0; i<5; i++) {
////        printf("%d",a[i]);
////        printf("  ");
////        printf("%d\n",b[i]);
////    }
//    
//    
//    for (int i = 0; i<5; i++) {
//        for (int j=0; j<5-i-1; j++) {
//            if(a[j]>a[j+1]){
//                int temp;
//                temp = a[j];
//                a[j] = a[j+1];
//                a[j+1]=temp;
//            }
//        }
//    }
//    for (int i = 0; i<5; i++) {
//        for (int j=0; j<5-i-1; j++) {
//            if(b[j]>b[j+1]){
//                int temp;
//                temp = b[j];
//                b[j] = b[j+1];
//                b[j+1]=temp;
//            }
//        }
//    }
//    
//    
//    for (int i=0; i<5; i++) {
//        printf("%d ",a[i]);
//    }
//    printf("\n");
//    for (int i=0; i<5; i++) {
//        printf("%d ",b[i]);
//    }
//    printf("\n");
//    for (int i = 0,j=0,k=0; i < 10; i++)
//    {
//        if (j >= 5){
//            c[i] = b[k++];
//        }else if (k >= 5){
//           c[i] = a[j++];
//        }else{
//            c[i] = a[j] <= b[k] ? a[j++] : b[k++];
//        }
//    }
//    for (int i=0; i<10; i++) {
//        printf("%d ",c[i]);
//    }
//    
//    return 0;
//}

//7. (***)给定某年某月某日,输出其为这一年的第几天。

//int main(){
//    int monthDays[]={0,31,28,31,30,31,30,31,31,30,31,30,31};
//    
//    int bdYear,bdmonth,bdday;
//    scanf("%d%d%d",&bdYear,&bdmonth,&bdday);
//    int days = 0;
//    for (int i=0; i<bdmonth; i++) {
//        days = days+monthDays[i];
//    }
//    if((bdYear%400==0||(bdYear%4==0&&bdYear))&&bdmonth>2)
//        days = days+1;
//    days = days+bdday;
//    printf("days:%d",days);
//    
//    return 0;
//}


//8. (**)编写整型值数组排序程序(冒泡排序--升序)
//int a[] = {3,-9,32,77,63,-24,14,0,21,45};

//int main(){
//    int a[] = {3,-9,32,77,63,-24,14,0,21,45};
//    int num = sizeof(a)/sizeof(a[0]);
//    for (int i=0; i<num; i++) {
//        for (int j=1; j<num; j++) {
//            if(a[j]<a[j-1]){
//                int temp = a[j-1];
//                a[j-1] = a[j];
//                a[j] = temp;
//            }
//        }
//    }
//    for (int i=0; i<num; i++) {
//        printf("%d ",a[i]);
//    }
//    return 0;
//}




//9、(***)找出下列整型数组中最大和最小值及其所在位置 i。
//int a[] = {5,-9,32,77,64,-24,14,0,21,45};

//int main(){
//    
//    int a[] = {5,-9,32,77,64,-24,14,0,21,45};
//    int max=0,min=0,maxflag=0,minflag=0;
//    for (int i=0; i<sizeof(a)/sizeof(a[0]); i++) {
//        if (i==0) {
//            max=min=a[i];
//        }
//        if(a[i]>max){
//            max = a[i];
//            maxflag = i;
//        }
//        if(a[i]<min){
//            min = a[i];
//            minflag = i;
//        }
//        
//    }
//    printf("max:%d\n",max);
//    printf("min:%d\n",min);
//    printf("maxflag:%d\n",maxflag);
//    printf("minflag:%d\n",minflag);
//    
//    
//    return 0;
//    
//}

//10、(*)把 str1, str2, str3 合并到 result 数组中。
//char result[50] = {0};
//char str1[] = "Lanou "; char str2[] = "23_class "; char str3[] = " is niu best!";
//结果:“Lanou 23_class is niu best!”

//int main(){
//    char result[50] = {0};
//    char str1[] ="Lanou";
//    char str2[] = "23_class ";
//    char str3[] = " is niu best!";
//    int i;
//    for(i=0; i<strlen(str1); i++) {
//        result[i] = str1[i];
//    }
//    for (int j=0; j<=strlen(str2); j++,i++) {
//        result[i]=str2[j];
//    }
//    for (int j=0; j<=strlen(str3); j++,i++) {
//        result[i]=str3[j];
//    }
//    
//    for (int k=0; k<50; k++) {
//        if(result[k]!='\0')
//        {
//            printf("%c",result[k]);
//        }
//    }
//    
//    
//    return 0;
//}
//11、(**)找出下面程序的错误:
//int main(int argc, char *argv[]) {
//    char string[10], str1[10];
//    int i;
//    for(i = 0; i < 10; i++)
//    {
//        str1[i] = 'a';
//    }
//    strcpy(string, str1);
//    
//    for (int i=0; i<10; i++) {
//        printf("%c",string[i]);
//    }
//    return 0;
//}
//12、(**)下面这个程序执行后会有什么错误或者效果:
//int main(int argc, char *argv[])
//{
//    unsigned char str[10], i;
//    for(i = 0; i < 256; i++)
//        str[i] = i;
//    return 0;
////越界
//}
//13、(***)模拟 n 个人参加选举的过程,并输出选举结果:假设候选人有
//四人,分别用 A、B、C、D 表示,当选某候选人时,直接输入其编号(编号由计
//算机随机产生),
//若输入的不是 A、B、C、D 则视为无效票,选举结束后按得票数从高到低输出 候选人编号和所得票数。
//int main(){
//    int n;
//    int person[4],personcount[4]={0};
//    printf("input person num");
//    scanf("%d",&n);
//    
//    for(int i=0;i<4;i++){
//        person[i]=rand()%1000;
//        printf("%c的编号是%d\n",'A'+i,person[i]);
//    }
//    
//    for (int i=0; i<n; i++) {
//        int temp;
//        printf("请输入第%d个人的投票编号\n",i+1);
//        scanf("%d",&temp);
//        for(int j=0;j<4;j++){
//            if (temp==person[j]) {
//                personcount[j]++;
//            }
//        }
//    }
//    for (int i=0; i<4; i++) {
//        printf("%c的票数是%d\n",'A'+i,personcount[i]);
//    }
//    return 0;
//}
//14、(****)思考题:编程在一个已知的字符串中找最长单词,假定字符
//串中只含字母和空格,空格用来分隔不同单词。 比如:"ni hao world”,最长单词是 world。

//int main(){
////    char string[201];
//    int flag=0,count=0,i=0,max=0;
//    //scanf("%s",string);
////    gets(string);
//    char string[] = "I love my girlfriend";
//    while (string[i]!='\0'){
//        if (string[i]!=' ') {
//            //printf("%c ",string[i]);
//            count++;
//        }
//        if(count>max&&string[i]==' ') {
//            max = count;
//            flag=i-count;
//            count=0;
//        }
//        if(count>max&&i==strlen(string)-1) {
//            max = count;
//            flag=i-count+1;
//            count=0;
//        }
//        if(string[i]==' '){
//            count =0;
//        }
//        i++;
//    }
//    
//    for (int i=flag; i<flag+max; i++) {
//        printf("%c",string[i]);
//    }
//    
//    return 0;
//}



//15、(*****)思考题: 约瑟夫环的数组实现 约瑟夫(Josephus)问题是由古罗马的史学家约瑟夫提出的,他参加并记录了
//公元 66-70 年犹太人反抗罗马的起义。约瑟夫作为一个将军,设法守住了裘达 伯特城达 47 天之久,在城市沦陷之后,他和 40 名将士在附近的一个洞穴中避
//难。在哪里,将士们群情激奋并表示:要投降毋宁死。于是,约瑟夫建议每个
//人轮流杀死他旁边的人,而这个顺序是由抽签决定的。约瑟夫有预谋地抓到了
//最后一签并且做为洞穴中两个幸存者之一生存下来。
//约瑟夫环问题的具体描述是:设有编号为 1,2,......,n 的 n(n>0)个人围成一 个圈,从第一个人开始报数,报到 m 时停止报数,报 m 的人出圈,再从他的 下一个人起重新报数,报到 m 时停止报数,报 m 的出圈,......,如此下去,知 道只剩下一人为止。当任意给定 n 和 m 后,设计算法求 n 个人出圈的次序。

//int main(){
//    
//    int person[200]={0},count=0;
//    int m,n;
//    scanf("%d%d",&m,&n);
//    //当前圈子里一共有多少人
//    count = n;
//    //设置当前圈子内有人的地方为1
//    for (int i=0; i<n; i++) {
//        person[i]=1;
//    }
//    int fc=0;
//    int i=0;
//    //当圈子中的总人数大于1的时候持续循环
//    while(count!=1){
//        //判断如果当前的位置有人，计数器加1
//        if (person[i]==1) {
//            fc++;
//        }
//        //当计数器的总数等于m时，此人出圈，当前数组值为0,同时重置计数器为0；
//        if(fc==m){
//            person[i]=0;
//            fc=0;
//            printf("%d out \n",i);
//        }
//        //计算当前count
//        count = 0;
//        for (int i=0; i<n; i++) {
//            if (person[i]==1) {
//                count++;
//            }
//        }
//        //位置下移
//        i++;
//        //当前位置大于总人数时，回到初始位置0
//        if(i>=n){
//            i=0;
//        }
//    }
//    
//    
//    return 0;
//}

//16、(*****)拓展题:调查学习冒泡排序以外的排序算法,并用 C 语言 实现


////最简单的同排序模型
//int main(){
//    int a[20] = {0};
//    for (int i=0; i<20; i++) {
//        a[i] = rand()%100;
//        printf("%d ",a[i]);
//    }
//    printf("\n");
//    //创建桶模型
//    int b[100];
//    memset(b, 0, sizeof(b));
//    //将数据放入桶中
//    for (int i=0; i<20; i++) {
//        //将对应的数据投入桶中
//        b[a[i]]++;
//    }
//    //打印桶中所拥有个数
//    for (int i=0; i<100; i++) {
//        for (int j=0; j<b[i]; j++) {
//            printf("%d ",i);
//        }
//    }
//    return 0;
//    
//}

//插入
//桶
//快排
