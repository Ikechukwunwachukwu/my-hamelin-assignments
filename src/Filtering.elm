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



--Exercise 3: Filter High Scores
--Task: Develop a function to filter out scores below 75 from a list of student scores.


filterHighScores : List Int -> List Int
filterHighScores scores =
    List.filter (\score -> score > 75) scores



--Exercise 4: Filter Out Words Starting with 'A'
--Task: Create a function to filter out words that start with the letter 'A',
--regardless of case, from a list of strings.


startsWithA : List String -> List String
startsWithA words =
    List.filter (\word -> String.toLower (String.left 1 word) /= "a") words
