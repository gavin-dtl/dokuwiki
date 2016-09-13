a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"linux 驱动demo";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2351:"
/**
 * @file stm8mcu_i2c.c
 * @author gavin, gavin_dtl@163.com
 * @version 1.0
 * @date 2016-06-12
 * @Modified date 2016-06-12
 * @brief 
 */


#include <linux/kernel.h>  
#include <linux/fs.h>  
#include <linux/init.h>  
#include <linux/delay.h>  
#include <asm/uaccess.h>  
#include <asm/irq.h>  
#include <asm/io.h>  
#include <linux/module.h>  
#include <linux/device.h>     //class_create  

//static char device_name = "stm8mcu_i2c";

static struct class *firstdrv_class;  
static struct device *firstdrv_device;  

int major;  
static int stm8_open(struct inode * inode, struct file * filp)  
{  
    printk("stm8_open\n");  
    return 0;  
} 

static int stm8_release(struct inode * inode, struct file * filp)  
{  
    printk("stm8_release\n");  
    return 0;  
}

static int stm8_write(struct file * file, const char __user * buffer, size_t count, loff_t * ppos)  
{  
    int ret = 0;
    printk("stm8_write\n");  
    return ret;  
}  
static int stm8_read(struct file *filp, char __user *buffer, size_t count, loff_t *ppos)
{
    int  ret = 0;
    printk("stm8_read\n");  
    return ret;
}

/* File operations struct for character device */  
static const struct file_operations first_drv_fops = {  
    .owner        = THIS_MODULE,  
    .open       = stm8_open,
    .release    = stm8_release,
    .write      = stm8_write,      
    .read       = stm8_read,
};  

/* 驱动入口函数 */  
static int first_drv_init(void)  
{  
    /* 主设备号设置为0表示由系统自动分配主设备号 */  
    major = register_chrdev(0, "stm8mcu_i2c", &first_drv_fops);  

    /* 创建firstdrv类 */  
    firstdrv_class = class_create(THIS_MODULE, "stm8mcu_i2c");  

    /* 在firstdrv类下创建xxx设备，供应用程序打开设备*/  
    firstdrv_device = device_create(firstdrv_class, NULL, MKDEV(major, 0), NULL, "stm8mcu_i2c");  
    return 0;  
}  

/* 驱动出口函数 */  
static void first_drv_exit(void)  
{  
    unregister_chrdev(major, "stm8mcu_i2c");  
    device_unregister(firstdrv_device);  //卸载类下的设备  
    class_destroy(firstdrv_class);      //卸载类  
}  

module_init(first_drv_init);  //用于修饰入口函数  
module_exit(first_drv_exit);  //用于修饰出口函数      

MODULE_AUTHOR("LWJ");  
MODULE_DESCRIPTION("Just for Demon");  
MODULE_LICENSE("GPL");  //遵循GPL协议 

";i:1;s:3:"cpp";i:2;N;}i:2;i:34;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2397;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2397;}}