# Chapter 1. Getting Started
## Exercise 1
Enter the following expressions into ghci. What are their types? 12 comments

    5 + 8
    Num a => a

    3 * 5 + 8
    Num a => a

    2 + 4 
    Num a => a

    (+) 2 4 
    Num a => a

    sqrt 16 
    Floating a => a

    succ 6 
    (Num a, Enum a) => a

    succ 7 
    (Num a, Enum a) => a

    pred 9 
    (Num a, Enum a) => a

    pred 8 
    (Num a, Enum a) => a

    sin (pi / 2) 
    Floating a => a

    truncate pi 
    Integral b => b

    round 3.5 
    Integral b => b

    round 3.4 
    Integral b => b

    floor 3.7 
    Integral b => b

    ceiling 3.3 
    Integral b => b

## Exercise 2
From ghci, type :? to print some help. Define a variable, such as let x = 1, then type :show bindings. What do you see?
    it :: Num t => t = _
    x :: Num t => t = _

    The current bindings/variables defined in the current ghci instance

## Exercise 3
The words function counts the number of words in a string. Modify the WC.hs example to count the number of words in a file. 

    See ex3.hs
## Exercise 4
Modify the WC.hs example again, to print the number of characters in a file.

    See ex4.hs