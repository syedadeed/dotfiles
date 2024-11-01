#include <iostream>

void increment(int& z){
    //z is a refrence thus it will share the same memory address as that of the argument
    z++;
    std::cout << "The memory address of 'z' is: " << &z << "\n";
}

int main(){
    //A reference is a type of variable which shares the same memory location as some other variable
    //A refrence variable can not be reassigned to share the memory address of a diffrent variable
    //its like creating an alias

    int x = 10;
    int& y = x;  //symbol table entry = int "x": 124, int "y": 124(Assume memory address of x is 124)
    
    y++;
    std::cout << "The new value of x is: " << x << "\n";
    
    increment(x);
    std::cout << "The memory address of 'x' is: " << &x << "\n";
    std::cout << "The memory address of 'y' is: " << &y << "\n";
    
    int a = 100;
    y = a;  //here just the value of a(100) is copied to the memory location 124
    std::cout << y << "\t" << x << "\t" << a << "\n";
    std::cout << &y << "\t" << &x << "\t" << &a << "\n";

    return 0;
}
