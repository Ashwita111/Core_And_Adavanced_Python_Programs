# Assignment 1 - Python program to check leap year or not

# Take input from the user
year = int(input("Enter a year: "))

# Check if the year is a leap year using conditions
if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print(year, "is a Leap Year")
else:
    print(year, "is NOT a Leap Year")

'''Output'''

'''
Example:
Enter a year: 2002
2002 is NOT a Leap Year
'''
