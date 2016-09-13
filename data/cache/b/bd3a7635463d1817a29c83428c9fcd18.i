a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"命令技巧";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:25;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:32;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"常用命令";i:1;i:3;i:2;i:32;}i:2;i:32;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:32;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:129:"
# 查看渲染
dumpsys SurfaceFlinger

# 查看应用内存使用情况
procrank

# 查看磁盘读写情况
busybox  iostat   
";i:1;s:4:"bash";i:2;N;}i:2;i:60;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:205;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"kill 指定名称线程";i:1;i:3;i:2;i:205;}i:2;i:205;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:205;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
	kill `busybox pgrep ethernet_det` 

";i:1;s:4:"bash";i:2;N;}i:2;i:244;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:297;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"挂载";i:1;i:3;i:2;i:297;}i:2;i:297;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:297;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:91:"
	mount -t vfat -o fmask=0000,dmask=0000,allow_utime=0022 /dev/block/mmcblk0p1 /mnt/extsd/
";i:1;s:4:"bash";i:2;N;}i:2;i:319;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:425;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"内核打印信息";i:1;i:3;i:2;i:425;}i:2;i:425;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:425;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:93:"
	echo 15 > /sys/module/sw_keyboard/parameters/debug_mask 
	echo 8 > /proc/sys/kernel/printk
";i:1;s:4:"bash";i:2;N;}i:2;i:459;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:567;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"常用出错";i:1;i:3;i:2;i:567;}i:2;i:567;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:567;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
	Fatal signal
	died
";i:1;s:4:"bash";i:2;N;}i:2;i:595;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:632;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"彩色打印error";i:1;i:3;i:2;i:632;}i:2;i:632;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:632;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:269:"
  #ifdef DB_ERROR  
  #define db_error(...) \  
  do { \  
  sprintf(db_buf, "\033[40;31;1m %s line[%04d] %s() \033[0m", 
  LOG_TAG, __LINE__, __FUNCTION__); \  
  ALOG(LOG_ERROR, db_buf, ##__VA_ARGS__); \  
  } while(0)  
  #else  
  #define db_error(...)  
  #endif
";i:1;s:3:"cpp";i:2;N;}i:2;i:665;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:947;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:947;}}