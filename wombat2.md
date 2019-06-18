# Day 2 (Tuesday 7/9)

[Link to Slideshow](google.com)

### Topics:

- 5-10 minutes of going over homework
- 5 minute review of what we did last class
- 5-10 minutes going over built-in wombat functions
- problem: make a program which walks the wombat around the edge of the screen
- problem: walk over to a pile of 10 leaves and pick them all up
- problem(student): pick all leaf piles in 1 row
- problem: pick all leaf piles in a row only if that pile has more than 5 leaves
- problem: pick all leaves in stacks which have even numbers of leaves and add 1 leaf to piles which have odd numbers of leaves
- problem: have wombat clear whole screen of leaves using code we already made



### Notes:
variables:

- variables allow the computer to store information that can be used later
- variables need a name and a value to hold
- a variable name should be descriptive but not too long
- example of a variable ```python var = 10``` which means that the variable var holds the integer 10
- a variable's value can change by doing the following ```python var = 5``` -> now the variable ```var``` holds the integer 5 instead of 10

looping:

- looping allows programmers to write less code by relying on the computer to do instructions multiple times
- a way to loop a piece of code is to use a ```python while``` loop
- basic syntax of a while loop:
```python
i = 0
while i < 5:
    print(i)
    i += 1
```
- here, we need to create a variable ```i``` and set the value it stores to 0 by typing ```i = 0```
- we need to type the ```python while``` keyword
- then we need a condition
    - a condition is a true or false statement
    - when the code is run for the first time, i stores 0 so the statment ```i < 5``` is true because 0 < 5
    - as the code continues the computer gets stuck in the while loop until the condition becomes false
    - the condition becomes false after 5 loops because 1 has been added to zero 5 times -> that means i stores 5 and 5 is not less than 5
    - after the condition becomes false, the computer exits the while loop and continues to the code below

if statements:

- allow you to perform checks to determine truth
- for example, you have two variables ```b = 5``` and ```c = 10```, and assume you don't know which is bigger, you can determine the biggest by using an if statement
    ```python
    if b < c:
        print("c is bigger")
    else:
        print("b is bigger")
- the ```else``` statement is the default option if the other options above are all false
- in this case, the computer would print that c is bigger because 10 > 5 -> True


problem: make a program which walks the wombat around the edge of the screen

![](/gifs/day2/walk_edge.gif)

- if you use single commands over and over such as ```bob.walk()``` the program will be very long and tedious to write
- you can shorten your code by implementing a loop
    - a loop is a piece of code which allows a piece of code to run multiple times
    - for example, this code below will cause bob to walk 10 times using only 1 walk call
    ```python
    i = 0
    while i < 10:
        bob.walk()
        i += 1
    ```

problem: walk over to a pile of 10 leaves and pick them all up

- again like above, you should use a loop to solve this problem
- however, this time, you would want to use the built in function ```found_leaf()``` to determine if the wombat is on a square which holds the stack of leaves
- then once you determine that you are on the square, you pick them up _while_ you have _found a leaf_

problem(student): pick all leaf piles in 1 row

- this is a similar problem to the one above but now you need to adapt it for multiple leaf piles
- hint: you'll know you're done picking up leaf piles once the wombat can't move anymore -> it'll be at the other side

problem: pick all leaf piles in a row only if that pile has more than 5 leaves

- this is similar to the problem above but now we need to determine if the pile has more than 5 leaves
- hint: make some code to count the leaves on the square by using a variable which stores the count
- only _if_ the count of leaves is higher than 5 pick the rest of the leaves on the square
- otherwise, put the leaves back
- do this until you reach the other side

problem: pick all leaves in stacks which have even numbers of leaves and add 1 leaf to piles which have odd numbers of leaves

- this is similar to the problem above but now you need two options: an ```if``` and an ```else``` to make sure you catch both cases

problem: have wombat clear whole screen of leaves using code we already made

![](/gifs/day2/world1.gif)

- this is combining everything we have learned in the previous problems
- you have to have some extra code here to tell the wombat which direction to turn at the end of the row
    - if it's on the right side it needs to turn back left so it can walk back the other direction and vice-versa



### Homework:

Continue on classwork if it's not finished. Otherwise, no homework. You should spend at least an hour on the homework and you are welcome to work longer than that. Be prepared to tell your teachers what progress you made at home.