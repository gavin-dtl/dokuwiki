a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"希尔排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1163:"
void shellsort(int k[],int n)
{
     int i, j, flag ,gap = n;

     while(gap > 1)
     {
          gap = gap/2;                /*增量缩小，每次减半*/
          do
          {                        /*子序列应用冒泡排序*/
               flag = 0;
               for(i=0;i<n-gap;i++) //n-gap 是控制上限不让越界
               {
                    j = i + gap;     //相邻间隔的前后值进行比较
                    if(k[i]>k[j])
                    {
                         swap(&k[i],&k[j]);
                         flag = 1;
                    }
               }
               printf("gap = %d:\n",gap);
               display(k,10);
          }while(flag !=0);
     }
}

void shellsort_1(int k[],int n)
{
     int i,flag;

     do
     {                        /*子序列应用冒泡排序*/
          flag = 0;
          for(i=0;i<n-1;i++)
          {
               if(k[i]>k[i+1])     //相邻的前后值进行比较
               {
                    swap(&k[i],&k[i+1]);
                    flag = 1;
               }
          }
          printf("gap=1:\n");
          display(k,10);
     }while(flag !=0);
}
";i:1;s:1:"c";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1205;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1205;}}