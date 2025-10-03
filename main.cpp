#include <iostream>
#include "calculator.h"

int main() {
    Calculator c;
    std::cout << "Add(4,3) = " << c.Add(4,3) << "\n";
    std::cout << "Sub(6,2) = " << c.Sub(6,2) << "\n";
    return 0;
}
