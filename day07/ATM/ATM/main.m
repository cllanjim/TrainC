//
//  main.m
//  ATM
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct card{
    int cardNO;
    int cardPassWord;
    float money;
    BOOL state;
}Card;

int cardManage(Card card[],int length){
    printf("please inpur card id:\n");
    int cardNo;
    while (1) {
        scanf("%d",&cardNo);
        for (int i=0; i<length; i++) {
            if(cardNo==card[i].cardNO&&card[i].state==1){
                return i;
            }else if (cardNo==card[i].cardNO&&card[i].state==0){
                printf("您的卡片被冻结");
            }
        }
        printf("您输入的卡号不存在");
    }
}

BOOL passWordInfo(Card card[],int flag){
    printf("password\n");
    int password = 0;
    int times = 3;
    while (times>0) {
        scanf("%d",&password);
        if (password==card[flag].cardPassWord) {
            printf("right\n");
            return 1;
        }else{
            times--;
            if (times==0) {
                break;
            }
            printf("password is wrong %d\n",times);
        }
    }
    card[flag].state = 0;
    printf("password is wrong %d",times);
    return 0;
}


void service(Card card[],int flag){
    while (1) {
        printf("pull money please enter 1");
        int order=0;
        scanf("%d",&order);
        switch (order) {
            case 1:{
                printf("请输入取款金额");
                int money=0;
                while (1) {
                    scanf("%d",&money);
                    if (money>2000) {
                        printf("取款太多");
                    }else if(money>card[flag].money){
                        printf("余额不足");
                    }else{
                        card[flag].money-=money;
                        printf("取款成功 还剩%lf",card[flag].money);
                        break;
                    }
                }
            }break;
            case 2:{
                printf("请输入存款金额");
                int money=0;
                scanf("%d",&money);
                card[flag].money+=money;
                printf("yes\n");
            }break;
            case 3:{
                printf("yue\n");
            }break;
            case 4:{
                
            }break;
            default:
                break;
        }
        scanf("%d",&order);
        if(order==0)
            return;
    }
}











int main(int argc, const char * argv[])
{
    return 0;
}

