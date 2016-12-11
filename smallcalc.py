def add(num1, num2):
    return num1 + num2
def sub(num1,num2):
    return num1 - num2
def multiply(num1,num2):
    return num1 * num2
def division(num1,num2):
    return  num1 / num2



def main():
    operation = raw_input('What kind of operation do you want to do ? (+,-,*,/)')
    if  (operation != '+' and operation != '-' and operation != '*' and operation != '/'):
        print('You must enter a valid operation')

    else:
        var1 = int(raw_input('Enter the first Number:'))
        var2 = int(raw_input('Enter the second Number:'))
        if(operation == '+'):
            print(add(var1,var2))
        elif(operation == '-'):
            print(sub(var1,var2))
        elif(operation == '*'):
            print(multiply(var1,var2))
        else:
            print(division(var1,var2))
main()
