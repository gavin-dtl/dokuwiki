a:62:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"gitois安装";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:26;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:32;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"下载安装gitosis";i:1;i:3;i:2;i:32;}i:2;i:32;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:32;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:257:"
	git clone git://github.com/ossxp-com/gitosis.git
	cd gitosis/
	sudo python setup.py install

	sudo apt-get install git-core openssh-server openssh-client
	sudo apt-get install git-daemon-run
	
	#添加python 环境
	sudo apt-get install python-setuptools
";i:1;s:4:"bash";i:2;N;}i:2;i:66;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:338;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"创建git用户 gitServer";i:1;i:3;i:2;i:338;}i:2;i:338;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:338;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:108:"
	sudo adduser --system --shell /bin/bash --disabled-password --group gitServer
	sudo adduser gitServer ssh
";i:1;s:4:"bash";i:2;N;}i:2;i:379;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:379;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"设置gitServer 密码";}i:2;i:501;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:529;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
	sudo passwd gitServer
";i:1;s:4:"bash";i:2;N;}i:2;i:529;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:529;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"添加用户组到sudoers ";}i:2;i:567;}i:18;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:593;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"
编辑/etc/sudoers文件，找到这一 行：";}i:2;i:595;}i:20;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:642;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"root ALL=(ALL) ALL";}i:2;i:643;}i:22;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:661;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"在起下面添加";}i:2;i:662;}i:24;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:680;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"zhc ALL=(ALL) ALL";}i:2;i:681;}i:26;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:698;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"(这里的zhc是你的用户名)，然后保存。";}i:2;i:699;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:749;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:751;}i:30;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"添加管理员密钥";i:1;i:3;i:2;i:751;}i:2;i:751;}i:31;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:751;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:64:"
	ssh-keygen
	scp /home/gavin/.ssh/id_rsa.pub 192.168.3.99:/tmp
";i:1;s:4:"bash";i:2;N;}i:2;i:788;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:867;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"创建gitosis工程";i:1;i:3;i:2;i:867;}i:2;i:867;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:867;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:867;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"切换到gitServer";}i:2;i:897;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:921;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:130:"
	sudo su - gitServer
	gitosis-init < /tmp/id_rsa.pub
	sudo chmod a+x ~gitServer/repositories/gitosis-admin.git/hooks/post-update
";i:1;s:4:"bash";i:2;N;}i:2;i:921;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:921;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"eixt 退出 gitServer用户";}i:2;i:1065;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1092;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1095;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"gitosis 配置";i:1;i:3;i:2;i:1095;}i:2;i:1095;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1095;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:54:"
  git clone gitServer@192.168.3.99:gitosis-admin.git
";i:1;s:4:"bash";i:2;N;}i:2;i:1124;}i:47;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1193;}i:48;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"添加用户管理";i:1;i:4;i:2;i:1193;}i:2;i:1193;}i:49;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1193;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1193;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"修改gitosis-admin/gitosis.conf";}i:2;i:1220;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1258;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:214:"
  [group testing-devloper]
  members = gavin
  writable = testing/testing

  [group testing-reader]
  members = @all
  writable = testing/testing

  [group testing-reader]
  members = @all
  writable = testing/**
";i:1;s:4:"bash";i:2;N;}i:2;i:1258;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:91:"
  git add gitosis.conf
  git commit -m "auto for repo testing"
  git push origin master  
";i:1;s:4:"bash";i:2;N;}i:2;i:1492;}i:55;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1598;}i:56;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"创建版本库";i:1;i:4;i:2;i:1598;}i:2;i:1598;}i:57;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1598;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:84:"
  sudo su - gitServer 
  mkdir testing
  cd testing/
  git init --bare testing.git
";i:1;s:4:"bash";i:2;N;}i:2;i:1627;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:151:"
  git commit --allow-emptt
  git remote add origin gitServer@192.168.3.99:testing/testing.git
  git clone  gitServer@192.168.3.99:testing/testing.git
";i:1;s:4:"bash";i:2;N;}i:2;i:1731;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1900;}i:61;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1900;}}