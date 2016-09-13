a:10:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"串口加密";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:24;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:30;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:45:"lichee\linux-3.4\drivers\tty\serial\sw_uart.c";i:1;i:3;i:2;i:30;}i:2;i:30;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:30;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3625:"
++++++++++++++++++++++++++++++++++++path1++++++++++++++++++++++++++++++++++++
#include "sw_uart.h"

#define SW_UART_NR     8

+1---------------------------------------------
#define UART_ENC_CODE
#ifdef UART_ENC_CODE
     #define CHARSLESSSIX           1
     #define CHARSPASSTRUE            0
     #define CHARSPASSFALSE       -1
#endif
1------------------------------------------------------------------------------


#endif
     clk_reset(sw_uport->mclk, AW_CCU_CLK_RESET);
     clk_reset(sw_uport->mclk, AW_CCU_CLK_NRESET);
}

++++++++++++++++++++++++++++++++++++path2++++++++++++++++++++++++++++++++++++

+2------------------------------------------------------------

#ifdef UART_ENC_CODE
static bool uart_enc_enable = false;
static char temp[7];

static unsigned int uart_enc(struct sw_uart_port *sw_uport, unsigned int lsr, char ch, unsigned int emc_size)
{
     int i;//vicent

     if(emc_size < 6){
               if (NULL == ch){
                    return CHARSPASSFALSE;
               }
               temp[emc_size] = ch;
               return CHARSLESSSIX;
     }
     else if(emc_size == 6){
          temp[emc_size] = '\0';
          if(!strcmp(temp,"eyesee")){
               return CHARSPASSTRUE;
          }
          else if(!strcmp(temp,"logcat"))
          {
               for(i = 0; i < (emc_size);i++){
                    uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, temp[i], TTY_NORMAL);
               }
               uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, ' ', TTY_NORMAL);
               uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, '&', TTY_NORMAL);
               uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, '\r', TTY_NORMAL);
          }
          return CHARSLESSSIX;
     }
     else
          return CHARSPASSFALSE;
}
#endif
2------------------------------------------------------------------------------

static unsigned int sw_uart_handle_rx(struct sw_uart_port *sw_uport, unsigned int lsr)
{


++++++++++++++++++++++++++++++++++++path4++++++++++++++++++++++++++++++++++++

static unsigned int sw_uart_handle_rx(struct sw_uart_port *sw_uport, unsigned int lsr)
{
     struct tty_struct *tty = sw_uport->port.state->port.tty;
     unsigned char ch = 0;
     int max_count = 256;
     char flag;
+3----------------------------------------------------------------------------    
#ifdef UART_ENC_CODE    
     unsigned int emc_size = 0, ret;
#endif
3----------------------------------------------------------------------------

++++++++++++++++++++++++++++++++++++path4++++++++++++++++++++++++++++++++++++

if (uart_handle_sysrq_char(&sw_uport->port, ch))
               goto ignore_char;
+4----------------------------------------------------------------------------
          #ifdef UART_ENC_CODE    
          if(!uart_enc_enable){
               ret = uart_enc(sw_uport, lsr, ch, emc_size);
               if (CHARSPASSTRUE == ret){
                    uart_enc_enable = true;
               }
               else if(CHARSPASSFALSE == ret){
                    emc_size = 0;
               }
               else if(CHARSLESSSIX == ret){
                    emc_size++;
               }
          }
          else{
               uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, ch, flag);    
          }
#else
          uart_insert_char(&sw_uport->port, lsr, SW_UART_LSR_OE, ch, flag);    
#endif
4----------------------------------------------------------------------------
ignore_char:
          lsr = serial_in(&sw_uport->port, SW_UART_LSR);
     } while ((lsr & (SW_UART_LSR_DR | SW_UART_LSR_BI)) && (max_count-- > 0));


";i:1;s:3:"cpp";i:2;N;}i:2;i:91;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3728;}i:9;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3728;}}