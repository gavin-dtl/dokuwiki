a:23:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:0:"";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:14;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:20;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"do...while";i:1;i:3;i:2;i:20;}i:2;i:20;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:20;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:211:"
do{...}while
#define spin_lock_nest_lock(lock, nest_lock)                   \
do {                                             \
     raw_spin_lock_nest_lock(spinlock_check(lock), nest_lock);     \
} while (0)
";i:1;s:1:"c";i:2;N;}i:2;i:46;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:46;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"宏定义不能简单的加一个括号，引用宏定义时习惯会加“；”号，会出错
是为了实现给宏定义加上一个大括号，防止宏定义展开出错。";}i:2;i:269;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:447;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:450;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"linux内核模块";i:1;i:3;i:2;i:450;}i:2;i:450;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:450;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:450;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"导出符号：";}i:2;i:478;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:493;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:92:"
	EXPORT_SYMBOL(符号名)；//符号名一般为函数名
	EXPORT_SYMBOL_GPL(符号名)；
";i:1;s:1:"c";i:2;N;}i:2;i:500;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:500;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"导出的符号可以被其他模块使用。";}i:2;i:604;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:649;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:650;}i:22;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:650;}}