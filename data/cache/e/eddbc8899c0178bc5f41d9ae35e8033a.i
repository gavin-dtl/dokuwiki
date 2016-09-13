a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"git技巧及常见错误";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:38;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:44;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"解决 .gitignore 不生效";i:1;i:3;i:2;i:44;}i:2;i:44;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:44;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
  git rm -r --cached .
  git add .
  git commit -m 'update .gitignore'
";i:1;s:4:"bash";i:2;N;}i:2;i:87;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:174;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"忽略掉文件权限检查";i:1;i:3;i:2;i:174;}i:2;i:174;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:174;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:174;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"error : old mode 100755 new mode 100644 ";}i:2;i:212;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:252;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"
解决办法 ：让git忽略掉文件权限检查：";}i:2;i:254;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:313;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
	git config --add core.filemode false
";i:1;s:4:"bash";i:2;N;}i:2;i:313;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:366;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:366;}}