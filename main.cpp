#include <iostream>
#include <Socket.h>

using namespace std;

int
main()
{
    auto * sock0 = new Socket(1234);
    auto * sock1 = new Socket(4321);

    if (!sock0->send("hey", "127.0.0.1", 4321))
        return 1;
    cout << "Sent: " << "hey" << endl;

    string hey = sock1->receive();
    cout << "Received: " << hey << endl;

    delete sock1;
    delete sock0;

    return 0;
}