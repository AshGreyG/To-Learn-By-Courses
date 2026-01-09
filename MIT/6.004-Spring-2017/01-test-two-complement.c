#include <stdio.h>

int main() {
    int positive = 5;
    int negative = -5;

    printf("=> positive address: %p\n", &positive);
    printf("=> negative address: %p\n", &negative);

    while (1);

    // Infinite loop for gdb to debug the two's complement
    //
    // 1. compile the program to binary executable program
    //    gcc -g 01-test-two-complement.c -o test_two_complement
    // 2. run the program and use gdb to debug
    // 
    //    => positive address: 0x7ffc6a557870
    //    => negative address: 0x7ffc6a557874
    // 
    //    open in another terminal and use root to run gdb:
    //    ps -aux | grep test_two_complement
    //    gdb <pid of test_two_complement>
    //
    //    in gdb
    //      (gdb) x/4xb 0x7ffc6a557870
    //      0x7ffc6a557870: 0x05    0x00    0x00    0x00
    //      (gdb) x/4xb 0x7ffc6a557874
    //      0x7ffc6a557874: 0xfb    0xff    0xff    0xff
    // 
    // 0x00000005 => 0b00000000_00000000_00000000_00000101
    // 0xfffffffb => 0b11111111_11111111_11111111_11111011

    return 0;
}