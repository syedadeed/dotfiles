#include <stdio.h>
#include <math.h>

//"#include" is a preprocessor command which loads all the declarations of the file
//stdio.h includes function for standard input output operations

// func name + its parameter = func signature
// you could have diffrent func with same name but they need to have diffrent func Signature
// this is called function overloading

int Global_variable = 10; //Global Variable

void Basics()
{
    //####################################################################################
    
    printf("Hello \"World\"\n");
    //printf first formats the output into a string and stores it in a output buffer
    //if there is a /n char in the ouput buffer or buffer is full, a syscall is made to output text

    printf("The Gloabal variable is: %d\n", Global_variable);
    //"%" is a format specifier(think of it as a placeholder for the variable)
    //the char after "%" represents the datatype of the variable

    //d = decimal(int), ld = long decimal(long)
    //f = float(float), lf = long float(double)
    //c = character(char), s = string(char array)
    
    //####################################################################################
    
    int a1;  // (1) decleration
    a1 = 109; // (2) assignment
    a1++;++a1;   /*increments value by 1*/     a1--;--a1;  /*decrements value by 1*/       a1 += 2;
    //++/-- after var means the variable will be returned then incremented/decremented,and vise-versa
    printf("The value of a1 is: %d\n", a1);

    //####################################################################################
    
    double a2 = 10.9;  // both (1) and (2) at the same time...
    printf("The value of a2 is: %f\ta1 + a2 is: %f\n", a2, a1 + a2);
    
    //####################################################################################    
    
    char a3 = 'D';  //single char only
    printf("The value of a3 is: %c\n", a3);

    //####################################################################################

    const long a4 = 12345678;  
    // const prevents anything to change the value of a variable.
    printf("You can not change the value of a4(%ld)\n", a4);
    
    //####################################################################################
    
    float a7 = 999.999;
    // type conversion
    printf("The value of a7 is: %d\n", (int)a7);
    //Note that you can not change the datatype of an already declared variable
    //in the above example we are simply converting the value of a7 into int
    
    //####################################################################################
    
    //C doesnt support boolean value by default(use #include <stdbool.h>)
    //For storing strings just use an array of chars(there will be a null terminator char"\0" at the end automatically)
    
    //####################################################################################

    //Math funcs
    printf("2 to the power of 3 is: %lf\tThe sqaure root of 4 is: %lf\n", pow(2,3), sqrt(4));
    //abs(num), round(num), ceil(num), floor(num)

    //####################################################################################
}

int main(){
    return 0;
}
