#Assignment 1 -- Write a Python program to find the number of times 4 appears in the tuple.

#Given tuple
tuplex= (2, 4, 5, 6, 2, 3, 4, 4, 7 )
count_num = 0                   #counter_variable
for item in tuplex:
    if item == 4:               #iterating by for loop
        count_num += 1
'''Printing Value'''
print(f"the number 4 occurs in tuple is {count_num} times")

'''Output'''
'''the number 4 occurs in tuple is 3 times'''