// Flash LED using timer TCB0 to generate interrupts

#include "mcc_generated_files/system/system.h"
#include <avr/interrupt.h>
#include <avr/io.h>

#define BLUE_LED_PIN 3

// Timer interrupt service routine for TCB0
ISR(TCB0_INT_vect) {
  static uint16_t tick_count = 0;
  tick_count++;

  if (tick_count >= 10) { // 10 * 10ms = 100ms
    PORTA.OUTTGL = (1 << BLUE_LED_PIN);
    tick_count = 0;
  }
  // IMPORTANT: You must manually clear the interrupt flag in bare metal
  TCB0.INTFLAGS = TCB_CAPT_bm;
}

int main(void) {
  SYSTEM_Initialize();

  // MANUALLY OVERRIDE TCB0 SETTINGS that MCC generated code may have set
  void TCB0_Stop(); // Stop timer

  // Enable the Interrupt - VITAL
  TCB0.INTCTRL = TCB_CAPT_bm;

  // Start timer using the Internal Peripheral Clock (CLK_PER)
  TCB0_Start(); // Calls function in tbc0.c by xoring the contents of CTRLA with
                // the timer enable bit

  while (1) {
    asm("nop"); // Do nothing, just wait for interrupts to toggle the LED
  }
}