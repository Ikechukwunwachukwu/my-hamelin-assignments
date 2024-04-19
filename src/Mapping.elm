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



--Exercise 7: Tag Length
--Task: Return the length of each string in a list, along with the original string in a tuple.


tagLength : String -> ( String, Int )
tagLength str =
    ( str, String.length str )


tagLengths : List String -> List ( String, Int )
tagLengths strings =
    List.map tagLength strings


--Exercise 8: Append Index
--Task: Append the index of each element to the element itself in a list of strings.


appendIndexForOne : Int -> String -> String
appendIndexForOne index string =
    string ++ " " ++ String.fromInt index


appendIndexForAll : List String -> List String
appendIndexForAll strings =
    List.indexedMap appendIndexForOne strings


--Exercise 9: Invert Booleans
--Task: Invert each boolean value in a list.


invertBoolean : Bool -> Bool
invertBoolean bool =
    not bool


invertBooleans : List Bool -> List Bool
invertBooleans bools =
    List.map invertBoolean bools


--Exercise 10: Format Product Display with Currency
--Task: Given a list of items, each with an amount
--and a currency (spelled out as "Dollars", "Pounds", "Euros"),
--format them into strings that show the currency symbol
--followed by the amount.


type alias PriceItem =
    { amount : Float
    , currency : String
    }



-- Function to format a single PriceItem into a string

formatOnePriceItem : PriceItem -> String
formatOnePriceItem item =
    case item.currency of
        "Dollars" ->
            "$" ++ String.fromFloat item.amount

        "Pounds" ->
            "£" ++ String.fromFloat item.amount

        "Euros" ->
            "€" ++ String.fromFloat item.amount

        _ ->
            "Unknown currency"


-- Function to format a list of PriceItems into a list of strings


formatPriceItems : List PriceItem -> List String
formatPriceItems items =
    List.map formatOnePriceItem items


--Exercise 11: Multiply by Index
--Task: Multiply each number in a list by its index.


multiplyByIndex : Int -> Int -> Int
multiplyByIndex index number =
    index * number


multiplyByIndexes : List Int -> List Int
multiplyByIndexes numbers =
    List.indexedMap multiplyByIndex numbers



--Exercise 12: Generate HTML Tags
--Task: Wrap each string in a list with HTML <p> tags.


wrapWithPTags : String -> String
wrapWithPTags str =
    "<p>" ++ str ++ "</p>"


wrapListWithPTags : List String -> List String
wrapListWithPTags strings =
    List.map wrapWithPTags strings



--Exercise 13: Calculate Logarithms
--Task: Calculate the natural logarithm of each number in a list.


calculateLog : Float -> Float
calculateLog number =
    logBase e number


calculateLogs : List Float -> List Float
calculateLogs numbers =
    List.map calculateLog numbers


--Exercise 14: Replace Empty String with Placeholder
--Task: Replace empty strings in a list with "Placeholder".


placeholderFromEmptyString : String -> String
placeholderFromEmptyString str =
    if String.isEmpty str then
        "Placeholder"

    else
        str


replaceEmptyStringsWithPlaceholder : List String -> List String
replaceEmptyStringsWithPlaceholder strings =
    List.map placeholderFromEmptyString strings


--Exercise 15: Normalize Text
--Task: Sanitize strings in a list by trimming whitespace
--and converting text to lowercase.


sanitizeString : String -> String
sanitizeString string =
    String.trim string
        |> String.toLower


sanitizeStrings : List String -> List String
sanitizeStrings strings =
    List.map sanitizeString strings


--Exercise 16: Find Length
--Task: Return the length of each string in a list.


findLengths : List String -> List Int
findLengths strings =
    List.map String.length strings


