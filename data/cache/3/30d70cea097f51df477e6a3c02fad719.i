a:36:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"修改apache2根路径及默认网页";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:54;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"一、修改根路径";i:1;i:2;i:2;i:54;}i:2;i:54;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:54;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:88;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:88;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:88;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:" 修改根路径，/etc/apache2/sites-available/000-default.conf，中的DocumentRoot/var/www/修改为想要的目录，比如：DocumentRoot/home/disk/www/html";}i:2;i:92;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:253;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:253;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:253;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:253;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" 添加访问权限";}i:2;i:257;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:276;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:276;}i:17;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:276;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:126:"
<Directory /home/disk/www>
    	Options Indexes FollowSymLinks
    	AllowOverride None
    	Require all granted
</Directory>
";i:1;N;i:2;N;}i:2;i:282;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:424;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"二、修改默认网页";i:1;i:2;i:2;i:424;}i:2;i:424;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:424;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:424;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"修改/etc/apache2/mods-available/dir.conf中的内容,原来是：";}i:2;i:461;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:534;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
<IfModule mod_dir.c>
   	DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
 </IfModule>
";i:1;N;i:2;N;}i:2;i:534;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:534;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"添加上想要的/wordpress就行啦。";}i:2;i:660;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:706;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:125:"
<IfModule mod_dir.c>
  	DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm /wordpress
</IfModule>
";i:1;N;i:2;N;}i:2;i:706;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:841;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"三、重启apache服务器";i:1;i:3;i:2;i:841;}i:2;i:841;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:841;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
sudo apache2ctl -k restart
";i:1;N;i:2;N;}i:2;i:885;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:923;}i:35;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:923;}}