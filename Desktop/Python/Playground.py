def func1(parameter1: str, parameter2: str, parameter3: int, parameter4: list) -> None:
    print(f"Hello! {parameter1} and {parameter2}, You are {parameter3} years old!")
    print("\n".join([i for i in parameter4]))

n1, n2 = "Adeed", ["Idk", "What", "To", "Say"]
func1("positional arguments", n1, 17, n2)

# arguments preceded by the respective parameter when we pass them to a function are called keyword arguments.
# The order of the arguments doesn't matter, unlike positional arguments
# in the above topic positional arguments were used.
def func2(parameter1, parameter2, parameter3):
    print(f"{parameter1} → {parameter2} → {parameter3}")

func2(parameter2="Herbivores", parameter1="Plants", parameter3="Carnivores")

# A function can send values/objects back to the caller with the help of return statements,
# These values will not be shown by just calling the function.
# one way you can display the returned value is to call the function inside print()

def func3(parameter1, parameter2):
    return parameter1 + parameter2

print(func3(2, 6))  # or
n3 = func3(4, 7)
print(n3)

# Optional Parameter here freq is optional parameter
def func4(word, freq=1):
    print(word * freq)

func4("Adeed")
func4("Hello", 2)

# you can assign a function -  to a variable just remember not to add () after the function name.
# if you do so then the variable will store the memory address of the function.
say = print
say("Whoa! I cant believe it works!")


# *args = it is a type of parameter that will pack all the arguments into a tuple.
# useful so that a function can accept varying amount of arguments.
def multiply(*multi):
    answer = 1
    for i in multi:
        answer = answer * i
    return answer

print(multiply(1, 2, 4, 6))
print(multiply(*[1, 6, 8]))
# **kwargs is a type of parameter that will pack all the arguments into a dictionary.
# useful so that a function can accept a varying amount of keyword arguments.
def func7(**keyword_arguments):
    print("Hello", end=" ")
    for i in keyword_arguments.values():
        print(i, end=" ")
    print()
    print(keyword_arguments.keys())

func7(title="Mr.", first="Syed", middle="Fraah", last="Adeed")
func7(**{"title": "Mr.", "first": "Syed", "middle": "Fraah", "last": "Adeed"})
