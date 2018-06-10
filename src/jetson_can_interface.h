#ifndef JETSON_CAN_INTERFACE_LIBRARY_H
#define JETSON_CAN_INTERFACE_LIBRARY_H

#include <cstdint>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#include <fcntl.h>
#include <unistd.h>
#include <net/if.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/ioctl.h>

#include <linux/can.h>
#include <linux/can/bcm.h>

typedef struct can_msg
{
    struct bcm_msg_head msg_head;
    struct can_frame frame[1];
} msg;

class can_interface{
    int s;
    struct ifreq ifr;
    struct sockaddr_can addr;
    int flags;
    int opt;
    msg tx_msg;
    msg rx_msg;
    public:
        can_interface();
        can_interface(char * ifname);
        ssize_t send(uint16_t address, uint8_t length, const uint8_t* data);
        ~can_interface();
    //    receive();
};

#endif