#include <iostream>
#include "md5.h"
#include <string>
#include <sstream>

using std::cout; using std::endl; using std::string;
 
int main(int argc, char** argv)
{
    int i = 0;
    std::string nonce;
    for(;;){
        std::stringstream ss;
        ss << i;
        ss >> nonce;
        std::string message = argv[1] + nonce;
        cout << md5(message) << " : md5 of " << message << endl;
        i++;
    }
    return 0;
}
