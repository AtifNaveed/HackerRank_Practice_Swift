//
//  main.cpp
//  Day13(AbstractClasses)
//
//  Created by Atif on 21/03/2019.
//  Copyright © 2019 atif.gcucs@gmail.com. All rights reserved.
//

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
class Book{
protected:
    string title;
    string author;
public:
    Book(string t,string a){
        title=t;
        author=a;
    }
    virtual void display()=0;
    
};

// Write your MyBook class here
class MyBook : public Book {
    //   Class Constructor
    //
    //   Parameters:
    //   title - The book's title.
    //   author - The book's author.
    //   price - The book's price.
    //
protected:
    int price;
public:
    // Write your constructor here
    MyBook(string title, string author, int price): Book(title, author), price(price) {
    };
    
    //   Function Name: display
    //   Print the title, author, and price in the specified format.
    //
    // Write your method here
    
    void display() {
        cout << "Title: " << title;
        cout << endl;
        cout << "Author: " << author;
        cout << endl;
        cout << "Price: " << price;
        cout << endl;
    }
};
// End class

int main() {
    string title,author;
    int price;
    getline(cin,title);
    getline(cin,author);
    cin>>price;
    MyBook novel(title,author,price);
    novel.display();
    return 0;
}
