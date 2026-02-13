#include "mcc_generated_files/system/system.h"
#include <avr/interrupt.h>
#include <avr/io.h>

#define BLUE_LED_PIN 3

// Replace MyTimerCallback with this hardware-level vector
ISR(TCB0_INT_vect) {
  static uint16_t tick_count = 0;
  tick_count++;

  if (tick_count >= 50) { // 10 * 10ms = 100ms
    PORTA.OUTTGL = (1 << BLUE_LED_PIN);
    tick_count = 0;
  }
  // IMPORTANT: You must manually clear the interrupt flag in bare metal
  TCB0.INTFLAGS = TCB_CAPT_bm;
}

int main(void) {
  SYSTEM_Initialize();

  // Force PA3 as output
  PORTA.DIRSET = (1 << BLUE_LED_PIN);

  // --- MANUALLY OVERRIDE TCB0 SETTINGS ---
  TCB0.CTRLA = 0; // Stop timer

  // Set Period (CCMP) for 10ms at 3.33MHz
  TCB0.CCMP = 33333;

  // Ensure Periodic Interrupt Mode is selected
  TCB0.CTRLB = 0x00;

  // Enable the Interrupt
  TCB0.INTCTRL = TCB_CAPT_bm;

  // Start timer using the Internal Peripheral Clock (CLK_PER)
  // TCB_CLKSEL_CLKDIV1_gc selects the internal clock with no divider
  TCB0.CTRLA = TCB_CLKSEL_CLKDIV1_gc | TCB_ENABLE_bm;

  // Enable Global Interrupts
  sei();

  while (1) {
    // If the timer is actually working, the LED will blink.
    // If it isn't, the CPU stays here forever.
    asm("nop");
  }
}