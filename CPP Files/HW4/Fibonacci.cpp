// Bup 6/21/20
// I know I was late...anyways, this will print the nth term of the fibonacci sequence

#include <iostream>

using namespace std;

class CTU{
  public:
    static int fibonacci(int n){
    if(n == 1)
      return 0;
    if(n < 4)
      return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
};

int main() {
  int n;
  cout << "Enter which term of the fibonacci sequence you would like: ";
  cin >> n;
  cout << CTU::fibonacci(n) << endl;
}