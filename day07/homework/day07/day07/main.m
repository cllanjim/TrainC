//
//  main.m
//  day07
//
//  Created by liushuai on 14-8-28.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//


//6、(****)模拟 ATM 机取款的过程
//(1)、定义两个能保存 5 个整形数的数组,一个用于保存 5 个人的卡号,一 个用于保存对应卡号的密码。
//(2)、判断输入的卡号是否在数组中。
//(3)、如果在数组中就让输入密码,判断是否和卡号对应的密码匹配。 (4)、判断密码,24 小时内只允许输入 3 次 错误的密码。输入错误应该提示 还剩下的输入次数,3 次都输入错误提示 24 小时内不允许操作该卡。 (5)、密码正确就让用户对该账户进行相应的操作。 (6)、注意取款的限制。
//(7)、上述功能对于一个 ATM 机是循环的过程,也就是说每个客户都会按照
//上面的操作进行操作,一个用户操作完成,下一个用户来了还可以进行相应的
//操作

#import <Foundation/Foundation.h>
//《第六讲:函数》 1、(**)一维浮点型数组的冒泡排序函数
void mySort(float a[],int size)
{
    for (int i=0; i<size; i++) {
        for (int j=0; j<size-1-i; j++) {
            if(a[j]>a[j+1]){
                float temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
                
            }
        }
    }
}
void showArray(float a[],int size){
    for (int i=0; i<size; i++) {
        printf("%.2f ",a[i]);
    }
}
//2、(***)编写实现 strlen 同功能的函数 stringLength。

int stringLength(char x[])
{
    int i=0,count=0;
    while (x[i]!='\0') {
        count++;
        i++;
    }
    return count;
}

//3、(***)编写实现 strcpy 同功能的函数 stringCopy。

void stringCopy(char dest[],char src[])
{
    int i=0;
    while (src[i]!='\0') {
        dest[i]=src[i];
        i++;
    }
    dest[i]='\0';
}

//4、(***)编写实现 strcat 同功能的函数 stringCatch。

void stringCatch(char dest[],char src[])
{
    int i=0,flag=0;
    while (dest[i]!='\0') {
        flag++;
        i++;
    }
    i=0;
    while (src[i]!='\0') {
        dest[flag] = src[i];
        flag++;
        i++;
    }
    dest[flag] = '\0';
}



//5、(***)编写实现 strcmp 同功能的函数 stringCompare。
int stringCompare(char str1[],char str2[])
{
    int len1 = stringLength(str1);
    int len2 = stringLength(str2);
    int flag = len1 < len2 ? len2 : len1;
    for (int i=0; i<flag; i++) {
        if (str1[i]!=str2[i]) {
            return str1[i]-str2[i];
        }
    }
    return len1-len2;
}


//6、(****)模拟 ATM 机取款的过程
//(1)、定义两个能保存 5 个整形数的数组,一个用于保存 5 个人的卡号,一 个用于保存对应卡号的密码。
//(2)、判断输入的卡号是否在数组中。
//(3)、如果在数组中就让输入密码,判断是否和卡号对应的密码匹配。
//(4)、判断密码,24 小时内只允许输入 3 次 错误的密码。输入错误应该提示 还剩下的输入次数,3 次都输入错误提示 24 小时内不允许操作该卡。
//(5)、密码正确就让用户对该账户进行相应的操作。
//(6)、注意取款的限制。
//(7)、上述功能对于一个 ATM 机是循环的过程,也就是说每个客户都会按照
//上面的操作进行操作,一个用户操作完成,下一个用户来了还可以进行相应的
//操作





int userId[] = {1001,1002,1003,1004,1005};
int userPwd[] = {2001,2002,2003,2004,2005};
int sessionid = -1;//当前访问用户的ID索引
int sessionStep = 0;//当前访问用户所进行的步骤
int pwdState =3;//当前用户可输入密码次数
void init(){
    sessionid = -1;//当前访问用户的ID索引
    sessionStep = 0;//当前访问用户所进行的步骤
    pwdState =3;//当前用户可输入密码次数
}
//判断用户是否在列表中,账户名有效返回当前账户索引 无效返回-1
int checkUserID(int uid)
{
    int flag = -1;
    for (int i=0; i<5; i++) {
        if (userId[i]==uid) {
            flag = i;
        }
    }
    return flag;
}

//判断用户输入密码是否正确，正确返回1 错误返回0
int checkUserPwd(int uidFlag,int pwd)
{
    int flag = 0;
    if (pwd == userPwd[uidFlag]) {
        flag = 1;
    }
    return flag;
}

//密码验证服务 若成功返回值 1
int userPwdService(int uidFlag,int pwd)
{
    if (checkUserPwd(uidFlag,pwd)==0) {
        pwdState--;
        return 0;
    }else{
        return 1;
    }
}

//账户验证服务 若正确保存当前sessionid,否则返回-1
int userIdService(int uid)
{
    int flag;
    flag=sessionid=checkUserID(uid);
    return flag;
}
//取款服务 钱数不是整数返回0 取款成功返回1 退出取钱返回-1
int drawMoneyService(int num){
    if (num==0) {
        return -1;
    }else if(num<0&&num%100!=0){
        return 0;
    }else{
        return 1;
    }
}
void LoginView(){
    
    while (1) {
        if (sessionStep==0) {
            printf("请输入账号\n");
            int text;
            scanf("%d",&text);
            if(userIdService(text)==-1){
                printf("账号错误\n");
                continue;
            }
            sessionStep++;
        }
        
        if(pwdState==0){
            init();
            continue;
        }
        
        if (sessionStep==1&&pwdState>0) {
            printf("请输入密码,您有%d次机会\n",pwdState);
            int password;
            scanf("%d",&password);
            if ((userPwdService(sessionid, password)==0)) {
                continue;
            }else{
                sessionStep++;
            }
            
        }
        
        break;
    }
}
//取款界面
void ATMView(){
    printf("Welcome come to ATM\n");
    printf("请输入取款金额,必须为100内整数,输入0退出服务\n");
    int num;
    scanf("%d",&num);
    switch (drawMoneyService(num)) {
        case -1:
            init();
            break;
        case 0:
            printf("请输入整数金额");
            break;
            
        case 1:
            printf("成功取款%d元",num);
            break;
            
        default:
            break;
    }
}




int main(int argc, const char * argv[])
{
    
//    float a[]={1.0,3.0,5.0,9.4,4.1,4.3,7.2,2.6,10.0,199.0,45.0,6.0,7.0};
//    mySort(a, sizeof(a)/sizeof(a[0]));
//    showArray(a, sizeof(a)/sizeof(a[0]));
    
//    char a[] = "haha";
//    printf("size of string is : %d\n",stringLength(a));
    
//    char a[] = "hello";
//    char b[20];
//    stringCopy(b,a);
//    puts(b);

    
//    char a[50] = "I want ";
//    char b[] = "to a Geek!";
//    stringCatch(a, b);
//    puts(a);
    
    
//    char a[] = "hhhh";
//    char b[] = "hhhhhh";
//    printf("%d",stringCompare(a, b));
    
    while (true) {
        LoginView();
        ATMView();
    }
    
    
    return 0;
}

