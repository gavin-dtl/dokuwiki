a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"快速排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1057:"
void quicksort(int k[], int start_num,int end_num)
{                            /*快速排序*/
     int i,j;
     if(start_num < end_num){//划分结束条件
          i = start_num;
          j = end_num+1;
          while(1){
               do{
                    i++;
               }while( !(k[start_num]<=k[i] || i==end_num) );//从第一个开始求出第一个大于基准值的元素位置i
           
               do{
                    j--;
               }while(!(k[start_num]>=k[j] || j==start_num)); //从最后开始求出第一个小于基准值的元素位置j
          
               if(i<j){
                    swap(&k[i],&k[j]);  /*交换k[i]和k[j]的位置*/
               }
               else
                    break;
       }
       swap(&k[start_num],&k[j]);//将基准元素与从后往前的第一个大于s的元素进行交换，即放在中间
       quicksort(k,start_num,j-1);/*递归排序基准元素前面的子序列*/
       quicksort(k,j+1,end_num);/*递归排序基准元素后面的子序列*/
    }
}
";i:1;s:1:"c";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1099;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1099;}}