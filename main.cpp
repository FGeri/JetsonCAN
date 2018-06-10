#include "src/jetson_can_interface.h"
#include <cstdint>

#define DELAY (10000)

int main(int argc, char** argv) {
    can_interface can;
    uint8_t data[8];
    uint8_t length = 8;
    uint16_t addr = 0x123;
    for (int i = 0; i < 8; ++i) {
        data[i]=i;
    }

    /* Spin forever here */
    for (int i = 0; i < 100; ++i) {
        usleep(DELAY);
        can.send(addr,length,data);
    }

    puts("\nGoodbye!");


    return EXIT_SUCCESS;

}