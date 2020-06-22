// Bup 6/21/20
// I know I was late...anyways, this one sums an n-long array

#include <iostream>

using namespace std;

int main() {
  int num;
  cout << "Enter the length of the array: ";
  cin >> num;
  int sum[num];

  for(int i = 0; i < sizeof(sum) / sizeof(*sum); i++){
     if(num == -1){
       sum[i] = 0;
       continue;
     }

    cout << endl << "Enter the " << i + 1;
    switch (i){
      case 0: cout << "st "; break;
      case 1: cout << "nd "; break;
      case 2: cout << "rd "; break;
      default: cout << "th "; break;
    }
    cout << "number of the array or type -1 to quit: ";
    cin >> num;

    if(num != -1) sum[i] = num;
    else sum[i] = 0;
  }

  num = 0;
  cout << endl << "Your array is [";
  for(int i = 0; i < sizeof(sum) / sizeof(*sum); i++){
    num += sum[i];
    cout << sum[i];
    if(i != sizeof(sum) / sizeof(*sum) - 1)
      cout << ", ";
  }

  
  cout << "].\nThe sum of the numbers in the array is: " << num << endl;
}