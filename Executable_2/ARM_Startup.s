// **********************************************************************
// *                    SEGGER Microcontroller GmbH                     *
// *                        The Embedded Experts                        *
// **********************************************************************
// *                                                                    *
// *            (c) 2014 - 2019 SEGGER Microcontroller GmbH             *
// *            (c) 2001 - 2019 Rowley Associates Limited               *
// *                                                                    *
// *           www.segger.com     Support: support@segger.com           *
// *                                                                    *
// **********************************************************************
// *                                                                    *
// * All rights reserved.                                               *
// *                                                                    *
// * Redistribution and use in source and binary forms, with or         *
// * without modification, are permitted provided that the following    *
// * conditions are met:                                                *
// *                                                                    *
// * - Redistributions of source code must retain the above copyright   *
// *   notice, this list of conditions and the following disclaimer.    *
// *                                                                    *
// * - Neither the name of SEGGER Microcontroller GmbH                  *
// *   nor the names of its contributors may be used to endorse or      *
// *   promote products derived from this software without specific     *
// *   prior written permission.                                        *
// *                                                                    *
// * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND             *
// * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,        *
// * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF           *
// * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE           *
// * DISCLAIMED.                                                        *
// * IN NO EVENT SHALL SEGGER Microcontroller GmbH BE LIABLE FOR        *
// * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR           *
// * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT  *
// * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;    *
// * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF      *
// * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT          *
// * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE  *
// * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   *
// * DAMAGE.                                                            *
// *                                                                    *
// **********************************************************************

  .section .vectors, "ax"
  .code 32
  .align 0
  .global _vectors
  .global reset_handler
  
_vectors:
  ldr pc, =reset_handler
  ldr pc, =undef_handler
  ldr pc, =swi_handler
  ldr pc, =pabort_handler
  ldr pc, =dabort_handler
  nop
  ldr pc, =irq_handler
  ldr pc, =fiq_handler

  .section .init, "ax"
  .code 32
  .align 0

/******************************************************************************
 *                                                                            *
 * Default exception handlers                                                 *
 *                                                                            *
 ******************************************************************************/
reset_handler:
  /****************************************************************************
   * TODO: Configure target system.                                           *
   ****************************************************************************/

#ifdef __FLASH_BUILD
  /****************************************************************************
   * TODO: Put any FLASH build configuation specific code here                *
   ****************************************************************************/
#endif

#if !defined(__SOFTFP__)
  // enable cp11 and cp10
  mrc p15, #0x00, r0, c1, c0, #0x02
  orr r0, r0, #0x00F00000
  mcr p15, #0x00, r0, c1, c0, #0x02
  // enable VFP
  mov r0, #0x40000000
  fmxr fpexc, r0
#endif

  /****************************************************************************
   * Jump to the default C runtime startup code.                              *
   ****************************************************************************/
  b _start

/******************************************************************************
 *                                                                            *
 * Default exception handlers                                                 *
 * These are declared weak symbols so they can be redefined in user code.     * 
 *                                                                            *
 ******************************************************************************/

  .global undef_handler
  .type undef_handler, function
undef_handler:
  b undef_handler

  .global swi_handler
  .type swi_handler, function
swi_handler:
  b swi_handler
  
  .global pabort_handler
  .type pabort_handler, function
pabort_handler:
  b pabort_handler

  .global dabort_handler
  .type dabort_handler, function
dabort_handler:
  b dabort_handler

  .global irq_handler
  .type irq_handler, function
irq_handler:
  b irq_handler

  .global fiq_handler
  .type fiq_handler, function
fiq_handler:
  b fiq_handler

  .weak undef_handler, swi_handler, pabort_handler, dabort_handler, irq_handler, fiq_handler

