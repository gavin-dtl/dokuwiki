a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"doxgen规范";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:892:"
/**@name 执行状态
  *@{
  */
 #define SUCCESS 0x00000000 ///<执行成功
 #define ERR_PARA_LEN 0x00000001 ///<长度错误
 #define ERR_NULL_POINT 0x00000002 ///<空指针错误
 #define ERR_PARA_TYPE 0x00000003 ///<参数类型错误
 /** @} */

 /** 2字节字符类型 */

 typedef  unsigned short  WORD;

 /** 坐标系类型 */

 typedef struct {

 int x; /*< 横坐标 */

 int y; /*< 纵坐标 */

 };

 /** 枚举类型*/

 enum COLOR{

 RED= 0 , /**< 红色 */

 GREEN= 1 , /**< 绿色 */

 };

@def 宏定义说明

@fn 函数 函数说明

@param 参数 参数说明

@ return 返回值说明(出错返回什么值，等等)

@file 文件名

@author 作者

@version 程序版本

@date 日期

@note 注解(注意事项，等)

@warning 警告信息

@bug bug信息

@test 测试示例、信息

@todo 一些未完事宜

(@bug、@test以及@todo等会出现链接页面)

";i:1;s:1:"c";i:2;N;}i:2;i:31;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:933;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:933;}}