/*
 * main.c
 *
 *  Created on: Feb 24, 2015
 *      Author: C16Sabin.Park
 */


#include <xuartlite_l.h>
#include <xparameters.h>
#include <xil_io.h>


int main(void)
{
 while (1)
 {
  unsigned char c;
  c = XUartLite_RecvByte(0x84000000);
  XUartLite_SendByte(0x84000000, c);
  Xil_Out8(0x83000000, c);
 }

 return 0;
}
