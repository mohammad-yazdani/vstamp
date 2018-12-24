//
// Created by Mohammad Yazdani on 2018-12-21.
//

#include <Socket.h>

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

Socket::Socket(unsigned int port) : port(port)
{
    int res;
    struct sockaddr_in address{};

    this->fd = socket(AF_INET, SOCK_DGRAM, 0);

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons( port );

    res = bind(this->fd, (struct sockaddr *)&address, sizeof(address));
    if (res < 0) {
        shutdown(this->fd, SHUT_RDWR);
        return;
    }
}

Socket::~Socket()
{
    shutdown(this->fd, SHUT_RDWR);
}

bool
Socket::send(string msg, string ip, unsigned int port)
{
    struct sockaddr_in address{};

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = inet_addr(ip.c_str());
    address.sin_port = htons(port);

    ssize_t sent = sendto(this->fd, msg.c_str(), msg.length(), 0, (struct sockaddr *)&address, sizeof(address));
    return  (sent == msg.length());
}

string
Socket::receive()
{
    // Define the address of the expected entity.
    struct sockaddr_in read_addr = {
            .sin_family = AF_INET,
            .sin_port = htons(this->port),
            .sin_addr.s_addr = INADDR_ANY
    };

    socklen_t cli_len = sizeof(struct sockaddr_in);

    ssize_t read_len;
    char * buf = (char *) malloc(sizeof(char) * MSG_LEN);
    read_len = recvfrom(this->fd, buf, MSG_LEN, 0, (struct sockaddr *) &read_addr, &cli_len);
    if (read_len < 0) return nullptr;
    if (read_len <= MSG_LEN) buf[read_len] = '\0';
    return buf;
}



