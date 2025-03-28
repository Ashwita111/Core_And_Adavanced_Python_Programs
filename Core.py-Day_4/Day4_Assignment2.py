# Assignment 2 - python program to find the largest among three number

# Take three numbers as input from the user
a = int(input("Enter first number: "))  
b = int(input("Enter second number: "))  
c = int(input("Enter third number: "))  

# Check which number is the greatest using if-elif conditions
if a > b and a > c:  
    greatest = a  # If 'a' is greater than both 'b' and 'c', assign 'a' to greatest
elif b > c:  
    greatest = b  # If 'b' is greater than 'c', assign 'b' to greatest
else:  
    greatest = c  # If the above conditions fail, 'c' is the greatest

# Print the greatest number
print("The greatest number is:", greatest)  

'''Output'''

'''
Example:
Enter first number: 17
Enter second number: 6
Enter third number: 19
The greatest number is: 19
'''
