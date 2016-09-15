a:98:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"V4L2 采集视";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:28;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:34;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"一、什么是video4linux";i:1;i:3;i:2;i:34;}i:2;i:34;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:34;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:34;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"Video4linux2（简称V4L2),是linux中关于视频设备的内核驱动。在Linux中，视频设备是设备文件，可以像访问普通文件一样对其进行读写，摄像头在/dev/video0下。";}i:2;i:71;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:272;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:274;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"二、一般操作流程（视频设备）";i:1;i:3;i:2;i:274;}i:2;i:274;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:274;}i:13;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:325;}i:14;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:325;}i:15;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:325;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:" 打开设备文件。 int fd=open(”/dev/video0″,O_RDWR);";}i:2;i:329;}i:17;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:390;}i:18;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:390;}i:19;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:390;}i:20;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:390;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:" 取得设备的capability，看看设备具有什么功能，比如是否具有视频输入,或者音频输入输出等。VIDIOC_QUERYCAP,struct v4l2_capability";}i:2;i:394;}i:22;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:555;}i:23;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:555;}i:24;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:555;}i:25;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:555;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:" 选择视频输入，一个视频设备可以有多个视频输入。VIDIOC_S_INPUT,struct v4l2_input";}i:2;i:559;}i:27;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:661;}i:28;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:661;}i:29;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:661;}i:30;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:661;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:167:" 设置视频的制式和帧格式，制式包括PAL，NTSC，帧的格式个包括宽度和高度等。VIDIOC_S_STD,VIDIOC_S_FMT,struct v4l2_std_id,struct v4l2_format";}i:2;i:665;}i:32;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:832;}i:33;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:832;}i:34;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:832;}i:35;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:832;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:" 向驱动申请帧缓冲，一般不超过5个。struct v4l2_requestbuffers";}i:2;i:836;}i:37;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:912;}i:38;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:912;}i:39;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:912;}i:40;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:912;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:" 将申请到的帧缓冲映射到用户空间，这样就可以直接操作采集到的帧了，而不必去复制。mmap";}i:2;i:916;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1038;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1038;}i:44;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1038;}i:45;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1038;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:" 将申请到的帧缓冲全部入队列，以便存放采集到的数据.VIDIOC_QBUF,struct v4l2_buffer";}i:2;i:1042;}i:47;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1146;}i:48;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1146;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1146;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1146;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" 开始视频的采集。VIDIOC_STREAMON";}i:2;i:1150;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1190;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1190;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1190;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1190;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" 出队列以取得已采集数据的帧缓冲，取得原始采集数据。VIDIOC_DQBUF";}i:2;i:1194;}i:57;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1282;}i:58;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1282;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1282;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1282;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:" 将缓冲重新入队列尾,这样可以循环采集。VIDIOC_QBUF";}i:2;i:1286;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1353;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1353;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1353;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1353;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" 停止视频的采集。VIDIOC_STREAMOFF";}i:2;i:1357;}i:67;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1398;}i:68;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1398;}i:69;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1398;}i:70;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1398;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" 关闭视频设备。close(fd);";}i:2;i:1402;}i:72;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1434;}i:73;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1434;}i:74;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1434;}i:75;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1436;}i:76;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"三、常用的结构体(参见/usr/include/linux/videodev2.h)";i:1;i:3;i:2;i:1436;}i:2;i:1436;}i:77;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1436;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:560:"
struct v4l2_requestbuffers reqbufs;//向驱动申请帧缓冲的请求，里面包含申请的个数
struct v4l2_capability cap;//这个设备的功能，比如是否是视频输入设备
struct v4l2_input input; //视频输入
struct v4l2_standard std;//视频的制式，比如PAL，NTSC
struct v4l2_format fmt;//帧的格式，比如宽度，高度等
struct v4l2_buffer buf;//代表驱动中的一帧
v4l2_std_id stdid;//视频制式，例如：V4L2_STD_PAL_B
struct v4l2_queryctrl query;//查询的控制
struct v4l2_control control;//具体控制的值
";i:1;s:1:"c";i:2;N;}i:2;i:1514;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2087;}i:80;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"四、参考";i:1;i:3;i:2;i:2087;}i:2;i:2087;}i:81;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2087;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2087;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"终于把mini2440 usb摄像头程序的搞懂了，附上程序及我的一些注释：";}i:2;i:2111;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2198;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2198;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"程序名：usbcamera.cpp";}i:2;i:2200;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2225;}i:88;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
Makefile：
usbcamera: usbcamera.cpp
arm-linux-g++ usbcamera.cpp -Wall -O2 -o usbcamera
arm-linux-strip -s usbcamera

clean:
rm usbcamera
";i:1;N;i:2;N;}i:2;i:2232;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2232;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"可执行文件：usbcamera ";}i:2;i:2381;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2409;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2409;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:"使用方法：将可执行文件下载到开发板，执行，会在当前文件夹生成一张图片。";}i:2;i:2411;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2516;}i:95;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:7351:"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <getopt.h> 

#include <fcntl.h> 
#include <unistd.h>
#include <errno.h>
#include <malloc.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#include <asm/types.h> 
#include <linux/videodev2.h>

#define CLEAR(x) memset (&(x), 0, sizeof (x))

struct buffer {
        void * start;
        size_t length;
};

static char * dev_name = "/dev/video0";//摄像头设备名
static int fd = -1;
struct buffer * buffers = NULL;
static unsigned int n_buffers = 0;

FILE *file_fd;
static unsigned long file_length;
static unsigned char *file_name;
//////////////////////////////////////////////////////
//获取一帧数据
//////////////////////////////////////////////////////
static int read_frame (void)
{
    struct v4l2_buffer buf;
    unsigned int i;

    CLEAR (buf);
    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory = V4L2_MEMORY_MMAP;
/*8.出队列以取得已采集数据的帧缓冲，取得原始采集数据。VIDIOC_DQBUF*/
    int ff = ioctl (fd, VIDIOC_DQBUF, &buf);
    if(ff<0)
        printf("failture\n"); //出列采集的帧缓冲

    assert (buf.index < n_buffers);
       printf ("buf.index dq is %d,\n",buf.index);

    fwrite(buffers[buf.index].start, buffers[buf.index].length, 1, file_fd); //将其写入文件中
/*9.将缓冲重新入队列尾,这样可以循环采集。VIDIOC_QBUF*/ 
    ff=ioctl (fd, VIDIOC_QBUF, &buf); //再将其入列
    if(ff<0)//把数据从缓存中读取出来
        printf("failture VIDIOC_QBUF\n");
    return 1;
}

int main (int argc,char ** argv)
{
    struct v4l2_capability cap;
    struct v4l2_format fmt;
    unsigned int i;
    enum v4l2_buf_type type;

    file_fd = fopen("test-mmap.jpg", "w");//图片文件名
/*1.打开设备文件。 int fd=open(”/dev/video0″,O_RDWR);*********/
    fd = open (dev_name, O_RDWR /* required */ | O_NONBLOCK, 0);//打开设备

/*2.取得设备的capability，看看设备具有什么功能，比如是否具有视频输入,或者音频输入输出等。VIDIOC_QUERYCAP,struct v4l2_capability*/
    int ff=ioctl (fd, VIDIOC_QUERYCAP, &cap);//获取摄像头参数
    if(ff<0)
        printf("failture VIDIOC_QUERYCAP\n");

/*3.设置视频的制式和帧格式，制式包括PAL，NTSC，帧的格式个包括宽度和高度等。*/
        struct v4l2_fmtdesc fmt1;
        int ret;
        memset(&fmt1, 0, sizeof(fmt1));
        fmt1.index = 0;
        fmt1.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    //获取当前驱动支持的视频格式
        while ((ret = ioctl(fd, VIDIOC_ENUM_FMT, &fmt1)) == 0)
        {
              fmt1.index++;
              printf("{ pixelformat = '%c%c%c%c', description = '%s' }\n",fmt1.pixelformat & 0xFF, (fmt1.pixelformat >> 8) & 0xFF,(fmt1.pixelformat >> 16) & 0xFF, (fmt1.pixelformat >> 24) & 0xFF,fmt1.description);
        }
    //帧的格式，比如宽度，高度等
    CLEAR (fmt);
    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE; //数据流类型，必须永远是V4L2_BUF_TYPE_VIDEO_CAPTURE
    fmt.fmt.pix.width = 640;//宽，必须是16的倍数
    fmt.fmt.pix.height = 480;////高，必须是16的倍数
    fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_JPEG;//视频数据存储类型//V4L2_PIX_FMT_YUYV;//V4L2_PIX_FMT_YVU420;//V4L2_PIX_FMT_YUYV;
    fmt.fmt.pix.field = V4L2_FIELD_INTERLACED;
    //设置当前驱动的频捕获格式 
    ff = ioctl (fd, VIDIOC_S_FMT, &fmt); 
    if(ff<0)
        printf("failture VIDIOC_S_FMT\n");
    //计算图片大小
    file_length = fmt.fmt.pix.bytesperline * fmt.fmt.pix.height; 

/*4.向驱动申请帧缓冲，一般不超过5个。struct v4l2_requestbuffers*/
    struct v4l2_requestbuffers req;
    CLEAR (req);
    req.count = 1;//缓存数量，也就是说在缓存队列里保持多少张照片
    req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    req.memory = V4L2_MEMORY_MMAP;//或V4L2_MEMORY_USERPTR

    ff = ioctl (fd, VIDIOC_REQBUFS, &req); //申请缓冲，count是申请的数量
    if(ff<0)
        printf("failture VIDIOC_REQBUFS\n");
    if (req.count < 1)
        printf("Insufficient buffer memory\n");

    buffers = (struct buffer*)calloc (req.count, sizeof (*buffers));//内存中建立对应空间
/*5.将申请到的帧缓冲映射到用户空间，这样就可以直接操作采集到的帧了，而不必去复制。mmap*/
    for (n_buffers = 0; n_buffers < req.count; ++n_buffers)
    { 
        struct v4l2_buffer buf; //驱动中的一帧
        CLEAR (buf);
           buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
           buf.memory = V4L2_MEMORY_MMAP;
           buf.index = n_buffers;
        //把VIDIOC_REQBUFS中分配的数据缓存转换成物理地址 
           if (-1 == ioctl (fd, VIDIOC_QUERYBUF, &buf)) //映射用户空间
                printf ("VIDIOC_QUERYBUF error\n");

           buffers[n_buffers].length = buf.length;
           buffers[n_buffers].start = mmap (NULL /* start anywhere */,buf.length,PROT_READ | PROT_WRITE /* required */,MAP_SHARED /* recommended */,fd, buf.m.offset);//通过mmap建立映射关系,返回映射区的起始地址

           if (MAP_FAILED == buffers[n_buffers].start)
            printf ("mmap failed\n");
        }
/*6.将申请到的帧缓冲全部入队列，以便存放采集到的数据.VIDIOC_QBUF,struct v4l2_buffer*/
    for (i = 0; i < n_buffers; ++i)
    {
           struct v4l2_buffer buf;
           CLEAR (buf);

           buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
         buf.memory = V4L2_MEMORY_MMAP;
           buf.index = i;
            //把数据从缓存中读取出来 
           if (-1 == ioctl (fd, VIDIOC_QBUF, &buf))//申请到的缓冲进入列队
                printf ("VIDIOC_QBUF failed\n");
    }
                
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
/*7.开始视频的采集。VIDIOC_STREAMON*/
    if (-1 == ioctl (fd, VIDIOC_STREAMON, &type)) //开始捕捉图像数据
           printf ("VIDIOC_STREAMON failed\n");

    for (;;) //这一段涉及到异步IO
    {
           fd_set fds;
           struct timeval tv;
           int r;

           FD_ZERO (&fds);//将指定的?件描述符集清空
           FD_SET (fd, &fds);//在文件描述符集合中增鍔????个新的文件描述符

           /* Timeout. */
           tv.tv_sec = 2;
           tv.tv_usec = 0;

           r = select (fd + 1, &fds, NULL, NULL, &tv);//判断是否可读（即摄像头是否准备好），tv是定时

           if (-1 == r) 
        {
                if (EINTR == errno)
                     continue;
                printf ("select err\n");
                }
           if (0 == r) {
                fprintf (stderr, "select timeout\n");
                exit (EXIT_FAILURE);
                }

           if (read_frame ())//如果可读，执行read_frame ()函数，并跳出循环
               break;
    }

    unmap:
    for (i = 0; i < n_buffers; ++i)
       if (-1 == munmap (buffers->start, buffers->length))
            printf ("munmap error");
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE; 
/*10.停止视频的采集。VIDIOC_STREAMOFF*/
        if (-1 == ioctl(fd, VIDIOC_STREAMOFF, &type)) 
                printf("VIDIOC_STREAMOFF");
/*11.关闭视频设备。close(fd);*/
    close (fd);
    fclose (file_fd);
    exit (EXIT_SUCCESS);
    return 0;
}
";i:1;s:1:"c";i:2;N;}i:2;i:2523;}i:96;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9886;}i:97;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9886;}}