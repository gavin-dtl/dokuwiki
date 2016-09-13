a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"链表排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1072:"
LNODE *link_sequence(LNODE *head)
{
     LNODE *pb=NULL, *p_datam=NULL;//p_datam每轮最大或最小的基准值
     if(head == NULL)
          return head;//判断链表是否为空
     p_datam = head;
    
     while(p_datam->next != NULL)
     {
          pb = p_datam->next;//每一轮开始都让pb指向p_datam的下一个节点
          while(pb != NULL)
          {
               if(p_datam->data < pb->data)//从大到小排序
               {
                    LNODE p_temp;//定义一个交换所需要的中间变量
                    p_temp = *p_datam;
                    *p_datam = *pb;
                    *pb = p_temp;
                   
                    /*上面的交换修改了指针域，需要将指针域再交换回来*/
                    p_temp.next = p_datam->next;
                    p_datam->next = pb->next;
                    pb->next = p_temp.next;
               }
               pb = pb->next;//pb继续指向下一个需要比较的节点
          }
          p_datam = p_datam->next;
     }
    
     return head;
}
";i:1;s:1:"c";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1114;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1114;}}