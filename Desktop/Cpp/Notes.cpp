#include <iostream>  // iostream includes function for standard input output operations
#include <cmath>
#include <limits> // used in the process of clearing the input buffer
#include <ctime>

// g++ file.cpp && ./a.out && rm a.out

//"#include" is a preprocessor command which loads all the declarations of the file

// func name + its parameter = func signature
// you could have diffrent func with same name but they need to have diffrent func Signature
// this is called function overloading

std::string GENIUS = "ADEED"; //Global Variable(can be modified by any function)

void Basics()
{
    //####################################################################################
    
    std::cout << "HELLO" << GENIUS << "\n"; //stores the output data in output buffer and sends it to the output device in bulk to improve performance.
    std::cerr << "HELLO" << "\tWORLD\n"; //writes directly to output device(no output buffer)

    //####################################################################################
    
    int a1;  // (1) decleration
    a1 = 109; // (2) assignment
    a1++;++a1;   /*increments value by 1*/     a1--;--a1;  /*decrements value by 1*/       a1 += 2;
    //++/-- after var means the variable will be returned then incremented/decremented,and vise-versa
    std::cout << a1 << "\n";
    
    //####################################################################################
    
    double a2 = 10.9;  // both (1) and (2) at the same time...
    std::cout << a2 << "\t" << a2 + a1 << std::endl; //std::endl it is like "\n" except it also clears the output buffer
    
    //####################################################################################  
    
    char a3 = 'D';  //single char only
    std::cout << a3 << std::endl;
    
    //####################################################################################
    
    bool a4 = false; // stores either true(1) or false(0)
    std::cout << a4 << std::endl;
    
    //####################################################################################
    
    std::string a5 = "JELLO\tHello mello";
    //a5 is an object(of size 32 bytes, stored in the stack), it stores a bunch of info/metadata 
    //along with the memory address of the actual string(which is located in the heap)
    std::cout << a5 << std::endl;
    
    //####################################################################################
    
    const long a6 = 12345678;  
    // const prevents anything to change the value of a variable.
    std::cout << a6 << std::endl;
    
    //####################################################################################
    
    float a7 = 999.999;
    // type conversion
    std::cout << (int)a7 << std::endl;  // this is the c style type conversion
    // this approach cant be used for converting a c datatype to cpp datatypes(like std::string) 
    std::cout << std::to_string(a7).at(3) << std::endl;
    //Note that you can not change the datatype of an already declared variable
    //in the above example we are simply converting the value of a7 into int
    
    //####################################################################################

    // math funcs
    std::cout << std::max(1,2) << "\t" << std::min(1,2) << std::endl;
    // max and min only accepts 2 arguments
    std::cout << pow(2,3) << "\t" << sqrt(4) << "\t" <<
    abs(-5) << "\t" << "\t"<< round(3.14) << "\t" << ceil(3.1) << "\t"<< floor(3.99);

    //####################################################################################
}

namespace first
{
    void print(std::string str = "Hello"); // Function declaration(str is an optional parameter)
    int a1 = 1;
    namespace second{std::string a1 = "Two";}
}

namespace third
{
    float a1 = 3.001;
}

void first::print(std::string str)
{
    std::cout << str << std::endl;
}

void namespace_alias()
{
    //####################################################################################

    /*namespace = provides a solution for preventing name conflicts in large projects.
    Each entity needs a unique name A namespace allows for identically named entities 
    as long as the namespaces are different.*/
    using namespace third;
    std::cout << first::a1 << "\t" << first::second::a1 << "\t" << a1 << std::endl;
    std::string a1 = "true";
    std::cout << a1 << "\t" << third::a1 << std::endl;
    
    //####################################################################################
    
    using std::cout; using std::endl;//using namespace std;
    cout << "Hello" << "\n";
    
    //####################################################################################

    // creating a alias of a data type using the keyword "using"
    using str = std::string;
    str a2 = "Adeed";
    std::cout << a2 << endl;

    //####################################################################################
}
void input()
{
    //####################################################################################

    // taking user input
    // cin does not read any whitespaces(ie space, tab, \n) 

    std::string a1;int a2;
    std::cout << "Enter your age: ";
    std::cin >> a2;  // adds a \n to the buffer(Note: it does not mean that a2 contains \n)
    std::cout << "Enter your name: ";
    std::getline(std::cin >> std::ws, a1);
    
    // std::getline reads the input stream until it encounters "\n", and stores it in a var
    // in this case the input stream is std::cin which takes input from the keyboard
    // std::ws makes sure any previous whitespaces in the input stream are ignored 
    // NOTE the second argument of the getline func must be a string.
    
    std::cout << "Your name is: " << a1 << std::endl << "Your age is: " << a2 << std::endl;

    //####################################################################################

    // clearing the input buffer
    std::string a3;std::string a4;
    std::cout << "enter a3: ";std::cin >> a3; std::cout << a3 << std::endl;
    std::cin.clear();  // clears all error flags in the input buffer
    std::cin.ignore(std::numeric_limits <std::streamsize>::max() , '\n');
    // ignore() is used to extract and discard characters from the input buffer
    // first parameter -> returns the maximum value/max number of char that can exist in the input buffer
    // std::numeric_limits<DataType>::related_method()
    // second parameter -> tells it stop the process if a given char is encountered
    // and it doesnt care if first parameter is satisfied or not
    // Note = "\n" is also removed then the process is termninated
    std::cout << "enter a4: ";std::getline(std::cin, a4);std::cout << a4 << std::endl;

    //####################################################################################
}
void conditionals()
{
    //####################################################################################

    // if else statements
    int a1;
    std::cout << "Enter your age: "; std::cin >> a1;
    if(a1 > 0){
        if(a1 < 18){
            std::cout << "You are a kid\n";
        }
        else if(a1 >= 100){
            std::cout << "WOWWW!!\n";
        }
        else if(a1 >= 18){
            std::cout << "You are an adult\n";
        }
    }
    else{std::cout << "You are a total idiot!\n";}
    
    //####################################################################################

    // switch like if else but more efficient when the same entity is compared with diffrent things
    // if you dont use break then as soon as a case gets true code blocks of all the cases bellow will also get executed 
    char a2;
    std::cout << "Enter Your Grade: "; std::cin >> a2;
    switch(a2){
        case 'A':
            std::cout << "Average\n";
            break;
        case 'B':
            std::cout << "Unaceptable, such a disapointment\n";
            break;
        default:  // think of it as "else"
            std::cout << "Very Very Bad\n";
    }
    
    //####################################################################################

    // trenary operator alternative to single if/else statement
    //(condition)? expression1(if conditon is true):expression2(if conditon is false)
    (10==10)? std::cout<<"mello\n":std::cout << "Jello\n";
    std::cout << ((10==10)? "Mello\n":"Jello\n");

    //####################################################################################

    // Logical operators
    int a3;
    std::cout << "What is the temperature outside: ";
    std::cin >>a3;
    if (a3 >= 10 && a3 <= 30){std::cout <<"Go outside\n";} // && -> and
    else if (a3 < 10 || a3 > 30){std::cout << "Stay inside\n";} // || -> or
    else{std::cout << "What the hell was the value!!\n";}
    
    bool a4;
    std::cout << "Are You a genius(1,0): "; std::cin >> a4;
    if (!a4){std::cout << "You are a genius!!\n";} // "!" -> not
    else{std::cout << "NO you are not!!\n";}
    //you can also use "and" "or" "not" instead of "&&" "||" "!"

    //####################################################################################
}
void loops()
{
    //####################################################################################

    //while loop
    int a1 = 0;while(a1 != 10){a1++;std::cout << a1 <<std::endl;}

    //####################################################################################

    //do while loop = does some block of code first
    //And Then repeat the same block of code if condition is true
    float a2;
    do{
        std::cout << "Enter a positive number: ";
        std::cin >> a2;
    }while (a2 < 0);
    
    //####################################################################################

    //for loops
    for(int a3 = 0; a3 < 18; a3+=2){std::cout << a3 << std::endl;}
    
    //####################################################################################

    // break and continue
    std::string a4 = "1_2_3_4_5_6_0_7_8_9";
    for(int a5 = 0; a5 < a4.length(); a5++)
    {
        if(a4.at(a5) == '_'){continue;}
        if(a4.at(a5) == '0'){break;}
        std::cout << a4.at(a5);
    }
    std::cout << std::endl;
    
    //####################################################################################

    // nested loop
    int num_count = -1;
    for (int height = 4; height != 0; height--)
    {
        num_count+= 2;
        for (int space = 0; space != height; space++)
        {
            std::cout << " ";
        }
        for (int num = 0; num != num_count; num++)
        {
            std::cout << num+1;
        }
        std::cout << std::endl;
        
    }

    //####################################################################################
}
void string_methods()
{
    //####################################################################################

    std::string a1 = "ABCD";

    a1.clear(); // clears the string 
    std::cout << a1.length() << "\t" << a1.empty()/*returns bool value*/ << "\n";
    
    a1.append("A");a1 += "BCD";
    std::cout << a1[2] << "\t" << a1.at(0) << std::endl;
    // .at wont allow out of bound indexs whereas [] wont check for it.
    // (negetive index not possible in C++)
    
    a1.insert(1, "_HELLO_"); // .insert(index, value)
    std::cout << a1 << std::endl;
    
    std::cout << a1.find("_HELLO_") << std::endl;  //same as python's find func(but it returns an unsigned int)
    
    a1.erase(1, 7);  // 1=inclusive, 7=exclusive removes a portion of the string
    std::cout << a1 << "\n";

    //####################################################################################
}
void random_func()
{
    //####################################################################################

    // Genrating random numbers
    //time(NULL) returns the current time  // it is used to randomise the seed value
    srand(time(NULL)); // before using rand you need to provide a seed(ie starting num) => srand(seed)
    int a1 = (rand()%6)+1;
    // by doing % 6 it is limiting the possible outcomes to 0 to 5
    // and after +1 possible outcomes are from 1 to 6 (rand()%6 gives the remainder of rand()/6) 
    std::cout << a1 << "\n" << "Another random number: " << rand();

    //####################################################################################
}
void arrays(int array[], int size)
{
    //####################################################################################

    //arrays -> its basicaly a continous block of memory and each element is sotred in memory continously 
    //all elements must have the same data type
    //number of elements should be specified during decleration of array
    //if you tried to access/declare outside the correct index val -> anything can happen(i mean it)
    int a1[4] = {0,1,2};
    a1[3] = 3;a1[0] = 10;
    std::cout << a1[3] << "\t" << a1[0] << std::endl;

    //####################################################################################

    // for each loop = just a way to access all the elemnts of the array
    for (char a2: {'A', 'B', 'C'}){std::cout << a2 << "\t";}

    //####################################################################################

    // Note = when passing an array to a func the parameter will actally be a pointer to the first element of the array
    int a3 = 0;
    for(int i = 0; i < size; i++){a3 += array[i];}
    std::cout << std::endl << a3 << std::endl;

    //####################################################################################

    int a4[2] = {1, 2};
    std::cout << sizeof(a4);
    // there are two elements in the array each occupies 4 bytes thus total space ocupied
    // = number of elemnts * number of bytes occupied by an element
    int number_of_elemnts = sizeof(a4) / sizeof(int);
    std::cout << "\t" << number_of_elemnts;

    //####################################################################################
    
    int a5[3][2] = {{1, 2},
                    {3, 4},
                    {5, 6}};
    std::cout << a5[2][0] << std::endl;
 
    //####################################################################################
}
void size()
{
    //####################################################################################

    // sizeof = gives the size in bytes of var, data type, object, class etc..
    std::string a1 = "Hellow"; int a2 = 123679;
    std::cout << sizeof("Hellow") << "\t" << sizeof(a1) << "\t" << sizeof(std::string) << std::endl;
    //sizeof(a1) is returning the size of the datatype of a1 ie std::string(which is a class)
    //std::string is a refrence datatype, it means the symbol table entry for the var "name" is
    //name: a memory location on the stack(which points towards a memory location in the heap where the actual string "Hellow" is located)
    std::cout << sizeof(int) << "\t" << sizeof(a2);

    //####################################################################################
}
void address_of_and_derefrencing_operators()
{
    //####################################################################################

    //Prerequisite = read about symbol table in Notes.txt first

    //Address of operator(&) = Gives the memory address of a variable
    //When accessing memory address of a variable, it returns the address of the starting byte
    int a1 = 64;
    std::cout << "Memory address of a1 is: " << &a1 << "\n";

    //####################################################################################

    //dereferencing operator(*) = gives the value stored at a given memory address
    //even though it takes a single memory address as the operand
    //it will start reading from that memory address
    //and continue reading subsequent bytes, according to the size of the datatype

    int a2 = 1025;
    std::cout << "The value at the memory address " << &a2 << " is: " << *&a2 << std::endl;
    //it will read all the four bytes to calculate the value, even though only the first byte was given

    //####################################################################################
}
int main(){return 0;}
