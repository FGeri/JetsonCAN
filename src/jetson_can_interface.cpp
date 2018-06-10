#include "jetson_can_interface.h"
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
#include <iostream>

#define DEFAULT_CAN_INTERFACE "can0"
#define PROGNAME "JETSON CAN INTERFACE"
#define DEBUG TRUE


can_interface::can_interface() {
    char ifname[10];
    strcpy(ifname,DEFAULT_CAN_INTERFACE);

    s = socket(PF_CAN, SOCK_DGRAM, CAN_BCM);
    if (s < 0)
    {
        perror(PROGNAME": Cannot open socket\n");
    }
    strncpy(ifr.ifr_name, ifname, IFNAMSIZ);
    if (ioctl(s, SIOCGIFINDEX, &ifr) < 0)
    {
        perror(PROGNAME": Error during config\n");
    }
    addr.can_family = AF_CAN;
    addr.can_ifindex = ifr.ifr_ifindex;
    if (connect(s, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror(PROGNAME": Cannot connect to CAN interface\n");
    }

    /* Set socket to non-blocking */
    flags = fcntl(s, F_GETFL, 0);
    if (flags < 0) {
        perror(PROGNAME": Some error happened\n");
    }

    if (fcntl(s, F_SETFL, flags | O_NONBLOCK) < 0)
    {
        perror(PROGNAME": Some error happened\n");
    }

    tx_msg.msg_head.opcode  = TX_SEND;
    tx_msg.msg_head.can_id  = 0;
    tx_msg.msg_head.flags   = 0;
    tx_msg.msg_head.nframes = 1;

//    TODO az rxet is megcsinálni
};
can_interface::can_interface(char * ifname) {
    s = socket(PF_CAN, SOCK_DGRAM, CAN_BCM);
    if (s < 0)
    {
        std::cout<<"Cannot open socket";
    }
    strncpy(ifr.ifr_name, ifname, IFNAMSIZ);
    if (ioctl(s, SIOCGIFINDEX, &ifr) < 0)
    {
        std::cout<<"Error during config";
    }
    addr.can_family = AF_CAN;
    addr.can_ifindex = ifr.ifr_ifindex;
    if (connect(s, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        std::cout<<"Cannot connect to CAN interface";
    }

    /* Set socket to non-blocking */
    flags = fcntl(s, F_GETFL, 0);
    if (flags < 0) {
        std::cout << "Some error happened ";
    }

    if (fcntl(s, F_SETFL, flags | O_NONBLOCK) < 0)
    {
        std::cout << "Some error happened ";
    }
}
ssize_t can_interface::send(uint16_t address, uint8_t length, const uint8_t* data){
    struct can_frame * const frame = tx_msg.frame;
    unsigned char * const frame_data = frame->data;
    ssize_t nbytes;

    if (address >= ((uint16_t)1 << 11)) {
        perror(PROGNAME": Invalid CAN address is used\n");
        return -1;
    };
    if (length > 8) {
        perror(PROGNAME": Invalid CAN message length is used\n");
        return -1;
    };


    //Set message ID
    frame->can_id = address;

    //Set message length
    frame->can_dlc = length;

    //Set the data of the message
    memcpy(frame_data,data, sizeof(uint8_t)*length);

    nbytes = write(s, &tx_msg, sizeof(tx_msg));
    if (nbytes < 0)
    {
        perror(PROGNAME": Error when sending the message\n");
        return -1;
    }
    else if (nbytes < (ssize_t)sizeof(tx_msg))
    {
        perror(PROGNAME": write: incomplete BCM message\n");
    }

#ifdef DEBUG
    else
    {
        std::cout<<"TX: "<<address<<" Data: ";
        for (int i = 0; i < length; ++i) {
            std::cout<<std::hex<<data[i]<<std::dec<<" ";
        }
        std::cout<<std::endl;
    }
#endif

};
can_interface::~can_interface(){
    if (close(s) < 0)
    {
        perror(PROGNAME ": close");
    }
}
