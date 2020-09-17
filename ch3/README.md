# Chapter3. Defining Types, Streamlining Functions
## Exercise 1-01
Write the converse of fromList for the List type: a function that takes a List a and generates a [a].

    See ex1-01.hs

## Exercise 1-02
Define a tree type that has only one constructor, like our Java example. Instead of the Empty constructor, use the Maybe type to refer to a node's children.

    See ex1-02.hs

## Exercise 2-01
Write a function that computes the number of elements in a list. To test it, ensure that it gives the same answers as the standard length function.

    See ex2-01.hs

## Exercise 2-02
Add a type signature for your function to your source file. To test it, load the source file into ghci again.

    See ex2-02.hs

## Exercise 2-03
Write a function that computes the mean of a list, i.e. the sum of all elements in the list divided by its length. (You may need to use the fromIntegral function to convert the length of the list from an integer into a floating point number.)

    See ex2-03.hs

## Exercise 2-04
Turn a list into a palindrome, i.e. it should read the same both backwards and forwards. For example, given the list [1,2,3], your function should return [1,2,3,3,2,1].

    See ex2-04.hs

## Exercise 2-05
Write a function that determines whether its input list is a palindrome.

    See ex2-05.hs

## Exercise 2-06
Create a function that sorts a list of lists based on the length of each sublist. (You may want to look at the sortBy function from the Data.List module.)

## Exercise 2-07
Define a function that joins a list of lists together using a separator value.

## Exercise 2-08
Using the binary tree type that we defined earlier in this chapter, write a function that will determine the height of the tree. The height is the largest number of hops from the root to an Empty. For example, the tree Empty has height zero; Node "x" Empty Empty has height one; Node "x" Empty (Node "y" Empty Empty) has height two; and so on.

## Exercise 2-09
Consider three two-dimensional points a, b, and c. If we look at the angle formed by the line segment from a to b and the line segment from b to c, it either turns left, turns right, or forms a straight line. Define a Direction data type that lets you represent these possibilities.

## Exercise 2-10
Write a function that calculates the turn made by three 2D points and returns a Direction.

## Exercise 2-11
Define a function that takes a list of 2D points and computes the direction of each successive triple. Given a list of points [a,b,c,d,e], it should begin by computing the turn made by [a,b,c], then the turn made by [b,c,d], then [c,d,e]. Your function should return a list of Direction.

## Exercise 2-12
Using the code from the preceding three exercises, implement Graham's scan algorithm for the convex hull of a set of 2D points. You can find good description of what a convex hull. is, and how the Graham scan algorithm should work, on Wikipedia.