// Bup 5/26/20
// Overly complicated funny shop program
// Yes this thing has to run in one class

#include <iostream>
#include <stdlib.h>
#include <time.h> 
using namespace std;

class Shop {
  public: 
    
    //Generates a new inventory
    void getItems(){
      srand (time(NULL));
      int item, priceMult;

      for(int r = 0; r < 8; r++){
        inv[r][0] = r; //Item no.
        inv[r][1] = rand() % 8; //colors
        item = rand() % 8;
        inv[r][2] = item; //Item type
        
        if(item == 0) //Sets price multiplier
          priceMult = 10;
        else if(item == 1)
          priceMult = 100;
        else if(item == 7)
          priceMult = 10000;
        else
          priceMult = 1;

        inv[r][3] = rand() % (9 * priceMult) + priceMult; //Price
      }
    }

    string itemInfo(int n){
      string out = to_string(n + 1) + ". " + colors[inv[n][1]] + " " + item[inv[n][2]] + " - $" + to_string(inv[n][3]) + ".00";

      if(inv[n][2] == 1)
        out += "(On sale!)";
      else if(inv[n][2] == 7)
        out += "(Free shipping!)";

      return out;
    }

    private:
    int inv[4][8];
    string colors[8] = {"Red", "Blue", "Green", "Yellow", "Black", "White", "Violet", "Invisible"}; 
    string item[8] = {"Necklace", "Dumbphone", "Cake", "Juice", "Flowers", "Hat", "Magazine", "Spaceship"};
};

int main() {
  cout << "Welcome to the automated cashier, what would you like to buy today?" << endl;
  cout << "ITEMS:\n" << "#. Item description\n" << endl;

  Shop s;
  s.getItems();

  for(int i = 0; i < 8; i++){
    cout << s.itemInfo(i) << endl;
  }

  string receipt = "Receipt:\n", prompt;
  bool buying = true;

  while(buying){
    cout << "\nWhat item number would you like to buy?" << endl;
    int item[2];
    cin >> item[0];
    cout << "\nHow many would you like to buy?"  << endl;
    cin >> item[1];

    receipt += "$""\n";

    cout << "\nWould you like to keep buying things?" << endl;
    cin >> prompt;
    // if(prompt == "No" || prompt == "no" || prompt = "NO")
    //   buying = false;
  }
}