module Filtering exposing (..)

--Exercise 1: Filter Even Numbers
--Task: Write a function to filter out all even numbers from a list of integers.


filterEvenIntegers : List Int -> List Int
filterEvenIntegers integers =
    List.filter isOdd integers


isOdd : Int -> Bool
isOdd integer =
    modBy 2 integer /= 0
