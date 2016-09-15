a:34:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"编译ngrok";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"编译ngrok需要go>1.4版本支持";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:67;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:117:"
wget http://golangtc.com/static/go/1.4.2/go1.4.2.src.tar.gz
wget http://golangtc.com/static/go/1.5/go1.5.src.tar.gz
";i:1;s:4:"bash";i:2;N;}i:2;i:67;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:199;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"配置环境变量";i:1;i:3;i:2;i:199;}i:2;i:199;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:199;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
export GOROOT=$HOME/go 
export GOBIN=$GOROOT/bin
export GOARCH=arm
export GOOS=linux
export PATH=$GOROOT/bin:$PATH
";i:1;s:4:"bash";i:2;N;}i:2;i:233;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
tar zxvf go1.4.2.src.tar.gz
cd go/src
./make.bash
";i:1;s:4:"bash";i:2;N;}i:2;i:369;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:70:"
cd ../..
mv go go1.4
tar zxvf go1.5.src.tar.gz
cd go/src
./make.bash
";i:1;s:4:"bash";i:2;N;}i:2;i:440;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:225:"
cd ../..
git clone https://github.com/inconshreveable/ngrok.git
cd ngrok
sudo su
export GOROOT=/home/disk/gavin/go 
export GOBIN=$GOROOT/bin
export GOARCH=arm
export GOOS=linux
export PATH=$GOROOT/bin:$PATH
make release-all
";i:1;s:4:"bash";i:2;N;}i:2;i:530;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:530;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"make 失败安装sudo apt-get install mercurial";}i:2;i:770;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:817;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:817;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"文件生成在~/go/bin目录下";}i:2;i:819;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:851;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:853;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"参考";i:1;i:3;i:2;i:853;}i:2;i:853;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:853;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:853;}i:24;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:54:"http://xianglong.me/article/ubuntu-install-golang-env/";i:1;N;}i:2;i:870;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:928;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:928;}i:27;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:72:"https://github.com/inconshreveable/ngrok/blob/master/docs/DEVELOPMENT.md";i:1;N;}i:2;i:930;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1006;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1006;}i:30;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:30:"http://golangtc.com/downloadmd";i:1;N;}i:2;i:1008;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1042;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1043;}i:33;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1043;}}