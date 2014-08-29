//
//  main.m
//  day08
//
//  Created by liushuai on 14-8-29.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//
#import <Foundation/Foundation.h>
//《第七讲:结构体》
//课后题:
//1. (**)定义一个结构体变量(包括年、月、日),计算该日在本年中为第
//几天?(注意考虑闰年问题),要求写一个函数 days,实现上面的计算。 由主函数将年月日传递给 days 函数,计算后将日子传递回主函数输出。

//struct date{
//    int year;
//    int month;
//    int day;
//};
//typedef struct date Date;
//
//int countDays(Date date){
//    int days = 0;
//    int monthDays[]={0,31,28,31,30,31,30,31,31,30,31,30,31};
//    for (int i=0; i<date.month; i++) {
//        days = days+monthDays[i];
//    }
//    if((date.year%400==0||(date.year%4==0&&date.year))&&date.month>2)
//        days = days+1;
//    days = days+date.day;
//    return days;
//}
//
//int main(){
//    Date date;
//    scanf("%d%d%d",&date.year,&date.month,&date.day);
//    printf("这是第%d天",countDays(date));
//    return 0;
//}




//2. (***)某班有 5 个学生,三门课。分别编写 3 个函数实现以下要求:
//(1) 求各门课的平均分;
//(2) 找出有两门以上不及格的学生,并输出其学号和不及格课程的成绩;
//(3) 找出三门课平均成绩在 85-90 分的学生,并输出其学号和姓名


//typedef struct stuScore{
//    int sid;
//    char name[50];
//    int score[3];
//}StuScore;
////(1) 求各门课的平均分;
//void avgForCourse(StuScore stu[],double avgResult[]){
//    for (int i=0; i<3; i++) {
//        int sum = 0;
//        for (int j=0; j<5; j++) {
//            sum = sum + stu[j].score[i];
//        }
//        avgResult[i] = sum/5.0;
//    }
//    
//}
////(2) 找出有两门以上不及格的学生,并输出其学号和不及格课程的成绩;
//
////查找上方条件
////参数1 学生数组
////参数2 学生标记数组 若当前学生两门以上成绩不合格,标记当前学生为1;
////返回值 成绩不合格学生个数
//
//int findBadStudent(StuScore stu[],int flagStu[]){
//    int count = 0;
//    for (int i=0; i<5; i++) {
//        int temp = 0;
//        for (int j=0; j<3; j++) {
//            if(stu[i].score[j]<60)
//                temp++;
//        }
//        if (temp>=2) {
//            flagStu[i] = 1;
//            count++;
//        }
//    }
//    return count;
//}
//
////(3) 找出三门课平均成绩在 85-90 分的学生,并输出其学号和姓名;
//
////查找上方条件
////参数1 学生数组
////参数2 学生标记数组 若当前学生满足上方条件,标记当前学生为1;
////返回值 满足条件学生个数
//
//int findGoodStudent(StuScore stu[],int flagStu[]){
//    int stucount = 0;
//    for (int i=0; i<5; i++) {
//        int scoreCount = 0;
//        for (int j=0; j<3; j++) {
//            scoreCount = scoreCount + stu[i].score[j];
//        }
//        if (scoreCount>=3*85) {
//            flagStu[i] = 1;
//            stucount++;
//        }
//    }
//    return stucount;
//}
//
//void init(StuScore stu[]){
//    for (int i=0; i<5; i++) {
//        //生成学号
//        int uid = arc4random()%100+1000;
//        stu[i].sid = uid;
//        //生成姓名
//        char name[10];
//        int j=0;
//        for (; j<5; j++) {
//            name[j] = arc4random()%26+'a';
//        }
//        name[j]='\0';
//        strcpy(stu[i].name, name);
//        //生成成绩
//        for (int j=0; j<3; j++) {
//            int score = (arc4random()%60+40)/10*10;
//            stu[i].score[j] = score;
//        }
//    }
//}
//void showStudent(StuScore stu[]){
//    for (int i=0; i<5; i++) {
//        //学号
//        printf("%d ",stu[i].sid);
//        //姓名
//        printf("%s ",stu[i].name);
//        //成绩
//        for (int j=0; j<3; j++) {
//            printf(" %d",stu[i].score[j]);
//        }
//        printf("\n");
//    }
//    
//}
//
//
//
//int main(){
//    
//    StuScore stu[5];
//    init(stu);
//    showStudent(stu);
////    for (int i=0; i<5; i++) {
////        printf("请输入第%d个学生的名字\n",i+1);
////        scanf("%s",stu[i].name);
////        printf("请输入第%d个学生的学号\n",i+1);
////        scanf("%d",&stu[i].sid);
////        printf("请输入第%d个学生的成绩\n",i+1);
////        for (int j=0; j<3; j++) {
////            scanf("%d",&stu[i].score[j]);
////        }
////    }
//    
//    double avgResult[3];
//    avgForCourse(stu,avgResult);
//    for (int i=0; i<3; i++) {
//        printf("第%d门课的平均成绩是%.2lf\n",i+1,avgResult[i]);
//    }
//    
//    int flag[5];
//    if (findBadStudent(stu, flag)) {
//        for (int i=0; i<5; i++) {
//            if(flag[i]==1){
//                printf("学号%d有两门成绩以上不合格\n",stu[i].sid);
//                printf("分别是\n");
//                for (int j=0;j<3; j++) {
//                    if (stu[i].score[j]<60) {
//                        printf("第%d门的成绩%d:\n",j+1,stu[i].score[j]);
//                    }
//                }
//            }
//        }
//    }
//    
//    if(findGoodStudent(stu, flag)){
//        for (int i=0; i<5; i++) {
//            if (flag[i]==1) {
//                printf("好学生 %s %d\n",stu[i].name,stu[i].sid);
//            }
//        }
//    }
//    
//    
//    return 0;
//}






//3. (***)模拟n个人参加选举的过程,并输出选举结果:假设候选人有四
//人,分别用 A、B、C、D 表示,当选某候选人时直接输入其编号(编号由计算机
//随机产生),若输入的不是 A、B、C、D 则视为无效票,选举结束后按得票数从 高到低输出候选人编号和所得票数。

//typedef struct person{
//    int pid;
//    int count;
//}Person;
//
//void countTicks(Person p[],int pid){
//    for (int i=0; i<4; i++) {
//        if (p[i].pid==pid) {
//            p[i].count++;
//        }
//    }
//}
//void init(Person p[]){
//    for (int i=0; i<4; i++) {
//        p[i].pid = arc4random()%100+1000;
//        p[i].count = 0;
//    }
//}
//void showTicks(Person p[]){
//    for (int i=0; i<4; i++) {
//        printf("编号%d 目前总票数%d\n",p[i].pid,p[i].count);
//    }
//}
//int main(){
//    
//    Person p[4];
//    int n;
//    scanf("%d",&n);
//    init(p);
//    showTicks(p);
//    //进行投票
//    for (int i=0; i<n; i++) {
//        int temp;
//        scanf("%d",&temp);
//        countTicks(p,temp);
//    }
//    showTicks(p);
//    
//    
//}



//4.(***)创建一个 Point 结构体,包含 x,y 两个变量。 并写以下函数:
//函数 1,判断两个点是否在一条水平线上。
//函数 2,判断两个点是否在一条垂直线上。 函数
//3,判断两个点是否相等。


//5.(***)创建一个 Size 结构体,包含 width,height 两个变量。 并写以下函数:
//函数 1,判断两个 size 是否等宽。
//函数 2,判断两个 size 是否在等高。 函数
//3,判断两个 size 是否相等。


//6.(***)创建一个 Rect 结构体,包含 origin,size 两个变量。其中 origin 是
//Point 类型的,size 是 Size 类型的。 并写以下函数:
//函数 1,判断两个 Rect 是否相交。
//函数 2,判断两个 Rect 是否包含某个 Point。 函数
//3,判断一个 Rect 是否在另外一个 Rect 中。


//int main(int argc, const char * argv[])
//{
//
//    int hh=5;
//    int jj[hh];
//    for (int i=0; i<5; i++) {
//        scanf("%d",&jj[i]);
//    }
//    for (int i=0; i<5; i++) {
//        printf("%d",jj[i]);
//    }
//    return 0;
//}

