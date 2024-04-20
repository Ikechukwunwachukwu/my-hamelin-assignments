module Mapping exposing (..)

--Exercise 1: Double the Numbers
--Task: Write a function that doubles each number in a list of integers.


double : Int -> Int
double integer =
    integer * 2


doubleIntegers : List Int -> List Int
doubleIntegers integers =
    List.map double integers



--Exercise 2: Convert Boolean to String
--Task: Convert each boolean in a list to its string representation ("true" or "false").


boolToString : Bool -> String
boolToString bool =
    if bool then
        "True"

    else
        "False"


stringFromBool : List Bool -> List String
stringFromBool booleans =
    List.map boolToString booleans



--Exercise 3: Calculate Areas of Circles
--Task: Given a list of circle radii, calculate the area for each corresponding circle.


areaOfCircle : Float -> Float
areaOfCircle radius =
    let
        pi =
            3.14159
    in
    pi * radius * radius


areaOfCircles : List Float -> List Float
areaOfCircles radii =
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
volume dimension =
    dimension.length * dimension.height * dimension.breadth



-- Calculate volumes for each dimension using the map function


volumes : List Dimensions -> List Float
volumes dimensions =
    List.map volume dimensions



--Exercise 5: Uppercase Strings
--Task: Convert all strings in a list to uppercase.


stringsToUpper : List String -> List String
stringsToUpper strings =
    List.map String.toUpper strings



--Exercise 6: Calculate Square Roots
--Task: Return the square roots of a list of numbers.


squareRoot : Float -> Float
squareRoot float =
    sqrt float


squareRoots : List Float -> List Float
squareRoots floats =
    List.map squareRoot floats



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


invertBooleans : List Bool -> List Bool
invertBooleans bools =
    List.map not bools



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


formatPrice : PriceItem -> String
formatPrice item =
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


formatPrices : List PriceItem -> List String
formatPrices items =
    List.map formatPrice items



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


emptyStringToPlaceholder : String -> String
emptyStringToPlaceholder str =
    if String.isEmpty str then
        "Placeholder"

    else
        str


emptyStringsToPlaceholders : List String -> List String
emptyStringsToPlaceholders strings =
    List.map emptyStringToPlaceholder strings



--Exercise 15: Normalize Text
--Task: Sanitize strings in a list by trimming whitespace
--and converting text to lowercase.


sanitizeString : String -> String
sanitizeString string =
    string |> String.trim |> String.toLower


sanitizeStrings : List String -> List String
sanitizeStrings strings =
    List.map sanitizeString strings



--Exercise 16: Find Length
--Task: Return the length of each string in a list.


findLengths : List String -> List Int
findLengths strings =
    List.map String.length strings



--Exercise 17: Append "day"
--Task: Append "day" to the end of each string in a list
--representing shortened or non-standard days of the week.


appendDay : String -> String
appendDay str =
    str ++ "day"


appendDayToList : List String -> List String
appendDayToList strings =
    List.map appendDay strings



--Exercise 18: Convert Extended String to Boolean
--Task: Convert each string in a list to its boolean
--representation, considering extended variations such as
--"true", "yes", "y", "1" for True and "false", "no", "n", "0" for False.
--Case should not affect the conversion.


stringToBool : String -> Bool
stringToBool str =
    case String.toLower str of
        "true" ->
            True

        "yes" ->
            True

        "y" ->
            True

        "1" ->
            True

        _ ->
            False


convertStringsToBool : List String -> List Bool
convertStringsToBool strings =
    List.map stringToBool strings



--Exercise 19: Calculate Future Ages
--Task: Write a function that takes a specific year and a list of people
--(each person having a name, year of birth, and gender), and returns a list
--showing only the ages each person will be in that year. If a person was not born by that year,
--their age should be reported as 0.


type alias Person =
    { name : String
    , yearOfBirth : Int
    , gender : String
    }



-- Function to calculate the age of a person in a specific year


calculateAge : Int -> Person -> Int
calculateAge currentYear person =
    if currentYear >= person.yearOfBirth then
        currentYear - person.yearOfBirth

    else
        0



-- Function to calculate the ages of people in a list for a specific year


calculateAges : Int -> List Person -> List Int
calculateAges currentYear people =
    List.map (calculateAge currentYear) people



--Exercise 20: Calculate Future Ages (version 2)
--Task: Write a function that takes a specific year and a list of people
--(each person having a name, year of birth, and gender), and returns a list
--showing tuples of each person's name and age they will be in that year.
--If a person was not born by that year, their age should be reported as 0.
--Type definition for a person
-- Function to calculate the age of a person in a specific year


calculateAgeV2 : Int -> Person -> ( String, Int )
calculateAgeV2 currentYear person =
    ( person.name, calculateAge currentYear person )



-- Function to calculate the ages of people in a list for a specific year


calculateAgesV2 : Int -> List Person -> List ( String, Int )
calculateAgesV2 currentYear people =
    List.map (calculateAgeV2 currentYear) people
