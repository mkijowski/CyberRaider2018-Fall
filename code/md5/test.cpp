#include <iostream>
#include <string>

int main ()
{
  int n = 123;
  std::string str = std::to_string(n);
  std::cout << n << " ==> " << str << std::endl;

  return 0;
}
