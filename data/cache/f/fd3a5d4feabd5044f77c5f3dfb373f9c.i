a:59:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"下载和编译";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:33;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"下载";i:1;i:4;i:2;i:33;}i:2;i:33;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:33;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:122:"
svn co svn://192.168.1.252/a83t/android
svn co svn://192.168.1.252/a83t/lichee
svn co svn://192.168.1.252/a83t/stm8s_ass
";i:1;s:5:"shell";i:2;N;}i:2;i:53;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:191;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"编译";i:1;i:4;i:2;i:191;}i:2;i:191;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:191;}i:11;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:205;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:205;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:205;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" lichee";}i:2;i:209;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:216;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:216;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:216;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:224:"
  cd lichee
  ./build.sh config                               //进入硬件平台配置
  sun8iw6p1 -> android -> linux-3.4 -> xuanzhi    //选好配置后
  ./build.sh                                      //编译内核
 ";i:1;s:5:"shell";i:2;N;}i:2;i:222;}i:19;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:461;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:461;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:461;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" android";}i:2;i:465;}i:23;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:473;}i:24;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:473;}i:25;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:473;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:397:"
  source build/envsetup.sh        //配置环境变量
  lunch                           //选择平台方案， 选择xuanzhi
  extract-bsp                     //复制拷贝lichee编译出来的image，ko等文件到android
  make -j8                        //开始编译
  pack                            //打包固件
  lichee/tools/pack/sun8iw6p1_android_f1_uart0.img    //固件路径在
";i:1;s:5:"shell";i:2;N;}i:2;i:479;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:892;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"烧写";i:1;i:4;i:2;i:892;}i:2;i:892;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:892;}i:30;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:906;}i:31;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:906;}i:32;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:906;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" PhoenixCard.exe, 打开固件";}i:2;i:910;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:940;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:940;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:940;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:940;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" 获取usb盘符";}i:2;i:944;}i:39;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:960;}i:40;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:960;}i:41;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:960;}i:42;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:960;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" 选择卡量产";}i:2;i:964;}i:44;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:980;}i:45;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:980;}i:46;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:980;}i:47;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:980;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:" 点击烧录，有时烧录到卡里时会出现错误，这时点击恢复卡，重新烧录";}i:2;i:984;}i:49;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1078;}i:50;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1078;}i:51;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1078;}i:52;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1078;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:" 插卡到板子，上电进行烧录，可从串口看是否烧录成功";}i:2;i:1082;}i:54;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1155;}i:55;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1155;}i:56;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1155;}i:57;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1155;}i:58;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1155;}}