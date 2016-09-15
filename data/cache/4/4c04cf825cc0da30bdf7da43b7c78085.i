a:18:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"以指定的字符串分割字符串";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:50;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:50;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:50;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:118:" 函数StringSplit(分割字符串到一个字符串数组中，其中该数组第0位为分割后字符串的个数) ";}i:2;i:54;}i:7;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:172;}i:8;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:172;}i:9;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:172;}i:10;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:172;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:" 函数StringSplit_Struct(以定义一个新结构的方式来实现该函数)";}i:2;i:176;}i:12;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:254;}i:13;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:254;}i:14;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:254;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:4495:"
#include <stdio.h>

/*实现方案1*/
/*分割字符串到一个字符串数组中，其中该数组第一位为分割后的个数*/
char** StringSplit(const char* string,const char* split)
{
     char** result;
     /*首先分配一个char*的内存，然后再动态分配剩下的内存*/
     result = (char * * )malloc(sizeof(char *)*1);
     memset(result,0,sizeof(char *)*1);
     /*定义一个遍历用的指针和一个寻找位置用的指针*/
     char* p = string;
     char* pos = string;
     /*无论是否存在该分割串，绝对都会分割到一个字符串*/
     int count = 1;
     while(*p != '\0')
     {
         char* temp;
         char* tt;
         /*查找该字符串*/
         pos = strstr(p,split);
         /*结果为0说明剩下的字符串中没有该字符了*/
         if(pos == 0)
         {
           result = (char * * )realloc(result,sizeof(char *)*(count+2));
           result[0] = count;
           result[count] = p;
           result[count+1] = NULL;
           return result;
         }
         /*分配临时字符串空间*/
         temp = (char * )malloc(sizeof(char)*(pos - p+1));
         memset(temp,0,sizeof(char)*(pos - p+1));
         /*设置头指针，以便赋值时使用*/
         tt = temp;
         while(p<=pos)
         {
           *temp++ = *p++;
         }
         /*将字符串结尾置零*/
         *--temp = '\0';
         result = (char * * )realloc(result,sizeof(char *)*(count+1));
         result[0] = count;
         result[count] = tt;
         count++;
         /*设置下一次遍历时的指针（重要）。当split长度大于1时，不这样设置会多赋值不必要的字符串*/
         p +=strlen(split)-1;
     }
     return result;
}
/*实现方案2*/
/*为方便计数定义的结构，字符串数组从0开始赋值*/
typedef struct{
     int number;        /*分割的字符串个数*/
     char** string;        /*字符串数组*/
}StringTab;
/*分割字符串到一个字符串数组中*/
StringTab StringSplit_Struct(const char* string,const char* split)
{
     StringTab result;
     /*首先分配一个char*的内存，然后再动态分配剩下的内存*/
     result.string = (char * * )malloc(sizeof(char *)*1);
     memset(result.string,0,sizeof(char *)*1);
     /*无论是否存在该分割串，绝对都会分割到一个字符串*/
     result.number = 0;
     /*定义一个遍历用的指针和一个寻找位置用的指针*/
     char* p = string;
     char* pos = string;
     while(*p != '\0')
     {
        char* temp;
        char* tt;
        /*查找该字符串*/
        pos = strstr(p,split);
        /*结果为0说明剩下的字符串中没有该字符了*/
        if(pos == 0)
        {
          result.string = (char * * )realloc(result.string,sizeof(char *)*(result.number+1));
          result.string[result.number] = p;
          return result;
        }
        /*分配临时字符串空间*/
        temp = (char * )malloc(sizeof(char)*(pos - p+1));
        memset(temp,0,sizeof(char)*(pos - p+1));
        /*设置头指针，以便赋值时使用*/
        tt = temp;
        while(p<=pos)
        {
          *temp++ = *p++;
        }
        /*将字符串结尾置零*/
        *--temp = '\0';
        result.string = (char * * )realloc(result.string,sizeof(char *)*(result.number+1));
        result.string[result.number] = tt;
        /*计数器加一*/
        result.number++;
        /*设置下一次遍历时的指针（重要）。当split长度大于1时，不这样设置会多赋值不必要的字符串*/
        p +=strlen(split)-1;
     }
     return result;
}

int main()
{
     /*进行测试*/
     /*方案1测试*/
     char** array;
     array = StringSplit("a/aaa//哈aa","aaa");
     int i ;
     for(i=1;i<=(int)array[0];i++)
     {
         printf("Num:%d I:%d: Value: %s\n",array[0],i,array[i]);
     }
   
     array = StringSplit("a/aa哈a//哈aa","哈");
     for(i=1;i<=(int)array[0];i++)
     {
         printf("Num:%d I:%d: Value: %s\n",array[0],i,array[i]);
     }

     /*方案2测试*/
     StringTab array2;
     array2 = StringSplit_Struct("a/aaa//哈aa","aaa");
     for(i=0;i<=array2.number;i++)
     {
        printf("Num:%d I:%d: Value: %s\n",array2.number,i,array2.string[i]);
     }
     array2 = StringSplit_Struct("a/aa哈a//哈aa","哈");
     for(i=0;i<=array2.number;i++)
     {
        printf("Num:%d I:%d: Value: %s\n",array2.number,i,array2.string[i]);
     }

     return 0;
}
";i:1;s:1:"c";i:2;N;}i:2;i:261;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4766;}i:17;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4766;}}