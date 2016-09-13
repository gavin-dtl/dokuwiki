a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"递归链表逆序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:337:"
ListNode* reverse_list( ListNode* head) //逆序  
{  
    ListNode* new_head=head;  
    
    if(head==NULL || head->next==NULL)  
        return head;  
    
    new_head = reverse_list(head->next);  
    head->next->next=head;  
    head->next=NULL;//防止链表成为一个环，这是最关键的。
    
    return new_head;  
}
";i:1;s:1:"c";i:2;N;}i:2;i:37;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:385;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:385;}}