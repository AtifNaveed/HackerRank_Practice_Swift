//
//  main.cpp
//  Day19(Interfaces)
//
//  Created by Atif on 28/03/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
class AdvancedArithmetic{
public:
    virtual int divisorSum(int n)=0;
};
class Calculator : public AdvancedArithmetic {
public:
    int divisorSum(int n) {
        int sum = 0;
        for (int i = 1; i<=n; i++) {
            if (n%i == 0) {
                sum = sum + i;
            }
        }
        return sum;
    }
};

int main() {
    int n = 0;
    cin >> n;
    AdvancedArithmetic *myCalculator = new Calculator();
    int sum = myCalculator->divisorSum(n);
    cout << "I implemented: AdvancedArithmetic\n" << sum;
    cout << "\n";
    return 0;
}


