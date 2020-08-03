// Bup 5/26/20 MinMax
// Finds the minimum, maximum, and range of a series of numbers.

#include <iostream>
#include <vector> 
using namespace std;

int main() {
  cout << "This program gives you the minimum, maximum, and range of a series of numbers." << endl;

  cout << "Enter the amount of numbers you would like to test: ";
  int temp;
  cin >> temp;
  if(temp < 1)
    return -1; //Invalid Array
  int input[temp], hi = INT8_MIN, lo = INT8_MAX;

  for(int i = 0; i < temp; i++){
    cout << "Enter the " + to_string(i + 1);
    if(i == 0)
      cout << "st";
    else if(i == 1)
      cout << "nd";
    else if (i == 2)
      cout << "rd";
    else
      cout << "th";
    cout <<" number you would like to test: ";

    cin >> input[i];

    if(input[i] > hi)
      hi = input[i];
    if(input[i] < lo)
      lo = input[i];
    
    cout << endl;
  }

  cout << "The max is " + to_string(hi) + " and the min is " + to_string(lo) + "." << endl;
  cout << "The difference between them (the range) is " + to_string(hi - lo) + "." << endl;

  return 0;
}