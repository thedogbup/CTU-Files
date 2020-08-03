// Bup 5/26/20
// After the first one segfaulted I'm doing a simplified shop.

#include <iostream>
#include <stdlib.h>
#include <time.h> 

using namespace std;

int main() {
  srand (time(NULL));

  cout << "Welcome to the automated cashier, what would you like to buy today?" << endl;
  
  string str;
  int price, total = 0;

  while(true){
    cout << "\nType the name of any item you want to buy." << endl;
    cin >> str;
    // cin.ignore();
    price = rand() % 99 + 1;
    cout << str << " is $" << price << ".00, would you like to buy it? Type Y for yes." << endl;
    cin >> str;
    if((str.compare("Y")) == 0)
      total += price;
    
    cout << str << "\nWould you like to buy anything else? Type Y for yes." << endl;
    cin >> str;

    if((str.compare("Y")) != 0)
      break;
  }

  cout << "Your total is $" << total << ".00." << endl;
}