a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"链表逆序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:740:"
//=============================================================
// 语法格式：     LNODE *link_reverse(LNODE *head)
// 实现功能：     将链表逆序
// 参数：          *head：链表首址
// 返回值：          新的链表头
//=============================================================
LNODE *link_reverse(LNODE *head)
{
     LNODE *pb, *pt;

     if(head == NULL)//如果链表不存在，则返回
          return head;
         
     pb = head->next;
     head->next = NULL;
    
     while(pb != NULL)
     {
          pt = pb->next;//记录pb下一个节点地址
          pb->next = head;//这时才让pb->next指向他的上一个节点
          head = pb;
          pb = pt;
     }
    
     return head;
}
";i:1;s:1:"c";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:782;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:782;}}