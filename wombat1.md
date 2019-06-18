
# Day 1 (Monday 7/8)

[Link to Slideshow](google.com)

### Topics:
- explaining what computer programming is
- introducing wombat game
    - basic rules
- why we are using wombatgame to learn python
- how class is going to work
- setting up everyone's computers for the class
- code editor explained
    - which two files to edit when trying to instruct the wombat to do something
- built-in wombat functions
- how to run commands
- modifying starting conditions of the wombat
- making a basic program which causes the wombat to take 3 steps forward


### Notes:

wombat game:
- the wombat has 7 default actions
    1. walk in the direction its facing -> ```bob.walk()```
    2. turn left once -> ```bob.turn_left()```
    3. place a single leaf on the spot it's standing on -> ```bob.place_leaf()```
    4. pick a single leaf on the spot it's standing on -> ```bob.pick_leaf()```
    5. detecting if it can walk one step forward and not crash into a rock or a wall -> ```bob.can_move()```
    6. detecting if it found a leaf on the spot it's currently on -> ```bob.found_leaf()```
    7. determining if it's facing north -> ```bob.facing_north()```
- the wombat will break if:
    - the wombat crashes into a rock or a wall
    - the wombat tries to pick a leaf on a spot which doesn't have a leaf
    - the wombat tries to place a leaf when it doesn't have any leaves to place
- the screen is a 16x12 grid and those dimensions will never change


2 files:
- the __only__ files you should be editing are __main.py__ and __commands.py__
- commands for the wombat go in commands.py
- the only edits you do in main.py are changing the setup variables at the top such as ```delay```, ```wombat```, and ```world```
- to run your commands you need to call your function you just created in the ```run()``` function at the bottom of commands.py

creating a basic function:
- a function is just a collection of simple instructions to do a more complex task
- need to use the ```def``` keyword to start
- create a unique and descriptive function name
- add empty parenthesis to the end -> ()
- after the parenthesis add a colon -> :
- indent correctly inside the function to tell the computer what code belongs to the function
- this is a function which makes the wombat walk forward 5 times:
```python
def walk_5_times():
    bob.walk()
    bob.walk()
    bob.walk()
    bob.walk()
    bob.walk()
```

calling functions:
- calling a function is telling the computer to execute all the commands within it
- if we want bob the wombat to walk forward once we need to call the walk function on him
    - we do this by saying ```bob.walk()```
- take the ```walk_5_times()``` function above and say we want bob to do those actions
    - you need to call the function in the commands.py ```run()``` function at the bottom
    - calling ```walk_5_times()``` in the ```run()``` function will look like:
    ```python
    def run():
        self.walk_5_times()
    ```
    - remember that you need the ```self``` keyword before your function name in the ```run()``` function
- then to run your code, you have to run main.py

modifying starting conditions:
- the wombat can start in different cells on the screen depending on where you set the starting location
    - by default the starting location is 0, 0 which is the upper left corner
    - you can change where the wombat starts by changing ```wombat = Wombat(wombat_img, 0, 0)``` in main.py to ```wombat = Wombat(wombat_img, 0, 11)``` which would mean the wombat now starts in the bottom left corner
- you can change the world setup which is necessary for certain problems
    - by default, the world setup is 0 and is a clean board
    - change ```world = World(screen.get_size(), wombat, screen, delay, 0)``` in main.py to ```world = World(screen.get_size(), wombat, screen, delay, 1)``` if you want to change the setup to 1
- the animation speed of the wombat can be changed by going into main.py and changing the value of the variable ```delay = 0.05``` to ```delay = 0.00``` for example. (this change makes the wombat move as fast as possible)


### Homework:
Make a program which combines a couple of the function we learned about today to do something interesting

examples:
- make a square with leaves
- make the wombat dance with turns and walks
- have a wombat drop leaves and then pick them back up

If you can’t think of anything interesting to do, just play around with all of the built in functions. Get a good grasp of what each one does.

Be ready to show instructors what you have done tomorrow

