/*
 * Uses the MCU's UART function to send data to the Virtual COM Port in the PICkit5
 * Set the baud rate in the UART0 configuration in MCC and ensure any terminal (e.g. Data Visualizer) is set to the same rate
 * If using printf to output text Ensure Redirect to Printf is enabled in UART0 configuration in MCC
 * Flashes a blue LED on PA3 using a custom_delay function to avoid __delay_ms that can cause debugging issues
 * PA0 is the UDPI pin and is not defined in MCC, PA3 is defined as an output for the Blue LED, PA1, PA2, PA4, PA5, PA6, PA7, PB0, PB1, PB4, PB5, PC0, PC1, PC2 and PC3 are set as inputs with weak pullups.
 * For info on using GPIO pins see: https://developerhelp.microchip.com/xwiki/bin/view/software-tools/mcc/gpio/
 */

#include "mcc_generated_files/system/system.h"
#include <stdint.h> // stdint.h is a header file in the C standard library to enable more portable code by providing a set of typedefs that specify exact-width integer types

#define Blue_LED 0x08 //External Blue LED on PA3 i.e. Port A Bit 3 (starting at 0) which is the fourth bit and in binary 0b00001000
#define DELAY_CALC(seconds) ((uint32_t)((seconds) * 111000)) // don't change the value 111000 as this generates a 1s delay which can be adjusted by the calling code
//Usage examples:
//custom_delay(DELAY_CALC(0.5));    // 0.5 seconds ? 55,500
//custom_delay(DELAY_CALC(1.0));    // 1.0 seconds ? 111,000
//custom_delay(DELAY_CALC(2.5));    // 2.5 seconds ? 277,500
//custom_delay(DELAY_CALC(0.1));    // 0.1 seconds ? 11,100

//#define F_CPU 3333333UL // Note: CPU frequency is Clock source/6 = 3333333 Hz due to prescaler i.e. 20000000/6. F_CPU is defined in MCC Generated Files > system > clock.h so does not need redefining here.

int counter = 0; // A variable that can be printed

// A delay function that can be used instead of _delay_ms which does not work when compiler optimisation is set to 0 to enable correct debugging operations.

void __attribute__((noinline)) custom_delay(uint32_t S1_delay) {
    // Counter variable for delay
    volatile uint32_t delay_counter = S1_delay;

    // Decrement counter until zero
    while (delay_counter > 0) {
        delay_counter--;
        // Add a compiler barrier to prevent optimization
        __asm__ volatile("" :: : "memory");
    }
}

void UART_print_loop(
        uint8_t count) // the passed parameter 7 is allocated to the variable count
{
    // print Hello World count(7) times)
    int i;
    for (i = 0; i < count; i++) {
        printf("%d. Hello World!\n\r", i);
    }
    printf("\n\r"); // print new line and carriage return
    printf("Counter value = %d \n\r", counter); // print text and value of counter
    printf("\n\r"); // print new line and carriage return
}

/*
    Main application
 */

int main(void) {
    SYSTEM_Initialize();
    while (1) {
        counter++; // Increment the variable counter
        UART_print_loop(7); // run and pass the parameter value 7
        //PORTA.OUTTGL = (Blue_LED); // PORTA.OUTTGL is a register that controls pin toggling on PORT A, so Blue_LED = PA3 = 0x08, see line 13
        LED_Toggle(); // This instruction works as the pin PA3 has the Custom Name = LED in the Pins section of MCC and is simpler than the previous line
        custom_delay(DELAY_CALC(1.0)); // 1.0 seconds, see line 14 onwards
    }
    return 0; // this is never reached unless the while() loop exits for some reason
}