#Assignment 2 -- Write a Python program to convert a list to a tuple.

#Given List
listx = [5, 10, 7, 4, 15, 3]
list_to_tuple = ()          #Creating empty tuple

for item in listx:          #iterate using for loop
    list_to_tuple += (item,)        # Adding Items into tuple

print(f"list converted to tuple -- {list_to_tuple}")            #printing tuple

'''Output'''
'''list converted to tuple -- (5, 10, 7, 4, 15, 3)'''