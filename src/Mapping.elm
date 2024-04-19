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


--Exercise 3: Calculate Areas of Circles
--Task: Given a list of circle radii, calculate the area for each corresponding circle. 



areaOfCircle : Float -> Float
areaOfCircle radius =
    let
        pi =
            3.14159
    in
    pi * radius * radius


calculateAreas : List Float -> List Float
calculateAreas radii =
    List.map areaOfCircle radii



--Exercise 4: Calculate Volumes of Cubes/Cuboids
--Task: Given a list of records with dimensions of type Dimensions,
--calculate the volume for each cuboid.


type alias Dimensions =
    { length : Float
    , height : Float
    , breadth : Float
    }


volume : Dimensions -> Float
volume dimensions =
    dimensions.length * dimensions.height * dimensions.breadth


-- Test sample data


data : List Dimensions
data =
    [ { length = 2, height = 3, breadth = 4 }
    , { length = 5, height = 1, breadth = 7 }
    , { length = 1.5, height = 2.5, breadth = 3.5 }
    ]



-- Calculate volumes for each dimension using the map function


volumes : List Float
volumes =
    List.map volume data


--Exercise 5: Uppercase Strings
--Task: Convert all strings in a list to uppercase.


stringToUpper : String -> String
stringToUpper string =
    String.toUpper string


stringsToUpper : List String -> List String
stringsToUpper listStrings =
    List.map stringToUpper listStrings


--Exercise 6: Calculate Square Roots
--Task: Return the square roots of a list of numbers.


returnSquareRoot : Float -> Float
returnSquareRoot num =
    sqrt num


returnSquareRoots : List Float -> List Float
returnSquareRoots numbers =
    List.map returnSquareRoot numbers