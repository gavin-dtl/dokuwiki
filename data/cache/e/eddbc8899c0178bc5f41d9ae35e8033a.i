a:23:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"git技巧及常见错误";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:38;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:45;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"配置提交编辑器";i:1;i:3;i:2;i:45;}i:2;i:45;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:45;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:81:"
  git config --global core.editor vim //配置提交时使用vim作为编辑器
";i:1;s:4:"bash";i:2;N;}i:2;i:82;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:178;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"解决 .gitignore 不生效";i:1;i:3;i:2;i:178;}i:2;i:178;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:178;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
  git rm -r --cached .
  git add .
  git commit -m 'update .gitignore'
";i:1;s:4:"bash";i:2;N;}i:2;i:221;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:308;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"忽略掉文件权限检查";i:1;i:3;i:2;i:308;}i:2;i:308;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:308;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:308;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"error : old mode 100755 new mode 100644 ";}i:2;i:346;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:386;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"
解决办法 ：让git忽略掉文件权限检查：";}i:2;i:388;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:447;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
	git config --add core.filemode false
";i:1;s:4:"bash";i:2;N;}i:2;i:447;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:500;}i:22;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:500;}}