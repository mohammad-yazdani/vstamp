//
// Created by Mohammad Yazdani on 2018-12-21.
//

#ifndef VSTAMP_SOCKET_H
#define VSTAMP_SOCKET_H

#include <string>

#define MSG_LEN 1024

using namespace std;

class Socket {
private:
    int fd;
    unsigned int port;
public:
    explicit Socket(unsigned int port);
    virtual ~Socket();

    bool send(string msg, string ip, unsigned int port);
    string receive(); // Waiting call
};

#endif //VSTAMP_SOCKET_H
