module Mapping exposing (..)

--Exercise 1: Double the Numbers
--Task: Write a function that doubles each number in a list of integers.


double : Int -> Int
double number =
    number * 2


doubleNumber : List Int -> List Int
doubleNumber numbers =
    List.map double numbers


--Exercise 2: Convert Boolean to String
--Task: Convert each boolean in a list to its string representation ("true" or "false").


boolToString : Bool -> String
boolToString bool =
    if bool then
        "True"

    else
        "False"


stringFromBool : List Bool -> List String
stringFromBool listBool =
    List.map boolToString listBool
