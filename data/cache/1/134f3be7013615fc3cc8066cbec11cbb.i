a:13:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"延时开启init.rc系统服务";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:47;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"设置系统服务并默认不开启";i:1;i:2;i:2;i:47;}i:2;i:47;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:47;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:113:"

#service for ethernet_det hacking
service ethernet_det /system/bin/ethernet_det
	class core
	disabled
	oneshot
";i:1;s:4:"bash";i:2;N;}i:2;i:101;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:230;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"启动服务服务";i:1;i:3;i:2;i:230;}i:2;i:230;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:230;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:146:"

import android.os.SystemProperties;
@Override
    public void startServer() {
        SystemProperties.set("ctl.start", "ethernet_det");
    }

";i:1;s:4:"java";i:2;N;}i:2;i:265;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:424;}i:12;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:424;}}