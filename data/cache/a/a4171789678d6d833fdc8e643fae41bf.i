a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"插入排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:552:"
//从小到大进行排序
insertsort(int k[],int n)              /*直接插入排序*/
{
    int i,j;
    int temp;

    for(i=1;i<n;i++)
    {
        temp = k[i];                    //将要比较的值先绶存起来留出一个空位，方便移动
        j = i - 1;
        while(j>=0 && k[j]>temp)    //比较直到出现比temp大的值，或向前找到头
        {
               k[j+1] = k[j];               //将前面的值往后移
               j--;
          }
        k[j+1] = temp;                  //插在a[j]的后面
    }
}
";i:1;s:1:"c";i:2;N;}i:2;i:31;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:593;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:593;}}