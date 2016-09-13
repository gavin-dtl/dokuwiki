a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"冒泡排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:647:"
void bubblesort(int k[],int n)
{                    /*冒泡排序*/
     int i,j,tmp;
     int flag = 1,cont = 0;

     for(i=0;i<n && flag == 1;i++)     //控制每趟往前推一个，即少比较一次
     {            
          //flag = 0;     //加上flag
          for(j=0;j<n-i-1;j++) //从第一个开始，不断与相邻的值比较，并交换最值，一直推到最后，形如冒泡
          {    
               cont++;
               if(k[j]<k[j+1])
               {
                    swap(&k[j+1],&k[j]);
                    flag = 1;
               }
          }
     }

     printf("\n循环比较次数：%d\n",cont);
}
";i:1;s:1:"c";i:2;N;}i:2;i:31;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:688;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:688;}}