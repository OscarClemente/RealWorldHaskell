# Chapter2. Types and Functions
## Exercise 1
What are the types of the following expressions?

    False
    Bool

    (["foo", "bar"], 'a')
    ([[Char]], Char)

    [(True, []), (False, [['a']])]
    [(Bool, [[Char]])]

## Exercise 2
Haskell provides a standard function, last :: [a] -> a, that returns the last element of a list. From reading the type alone, what are the possible valid behaviours (omitting crashes and infinite loops) that this function could have? What are a few things that this function clearly cannot do? 

    It can:
    Ignore its argument, and always return a predefined Char
    Return one of the values inside the Char list
    Do some calculation with the Char values from the list and return a specific Char value

    It can't:
    Return a list of Chars
    Return any other type that is not a Char
    Not return anything at all

## Exercise 3
Write a function lastButOne, that returns the element before the last.

    See ex03.hs

## Exercise 4
Load your lastButOne function into ghci, and try it out on lists of different lengths. What happens when you pass it a list that's too short? 

    It works for length 2 and length 1 but crashes for empty list. We could check if xs is null and then put some error.
