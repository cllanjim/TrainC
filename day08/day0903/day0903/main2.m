#import <Foundation/Foundation.h>

typedef struct student{
    char name[20];
    int score;
}Student;

void sortByScore(Student s[],int len){
    for (int i=0; i<len; i++) {
        for (int j=0; j<len-1-i; j++) {
            if(s[j].score>s[j+1].score){
                Student temp = s[j];
                s[j] = s[j+1];
                s[j+1] = temp;
            }
        }
    }
}
void showAll(Student s[],int len){
    for (int i=0; i<len; i++) {
        printf("%s,%d",s[i].name,s[i].score);
        printf("\n");
    }
}

int main(){
    
    Student stu[]={{"liushuai1",89},{"liushuai2",92},{"liushuai3",70},{"liushuai4",80},{"liushuai5",50}};
    int len = sizeof(stu)/sizeof(stu[0]);
    showAll(stu,len);
    sortByScore(stu, len);
    showAll(stu,len);
    printf("hello");
    return 0;
}