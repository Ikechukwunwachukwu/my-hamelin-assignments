module Filtering exposing (..)

--Exercise 1: Filter Even Numbers
--Task: Write a function to filter out all even numbers from a list of integers.


filterEvenIntegers : List Int -> List Int
filterEvenIntegers integers =
    List.filter isOdd integers


isOdd : Int -> Bool
isOdd integer =
    modBy 2 integer /= 0



--Exercise 2: Filter Short Words
--Task: Create a function to exclude words shorter than 4 characters from a list of strings.


filterShortWords : List String -> List String
filterShortWords words =
    List.filter (\word -> String.length word >= 4) words
