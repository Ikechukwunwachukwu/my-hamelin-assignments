module Conditionals exposing (..)

--Exercise 1: Grade calculation using if-else statement


calculateGrade : Int -> String
calculateGrade score =
    if score < 0 || score > 100 then
        "invalid score"

    else if score >= 90 then
        "A"

    else if score >= 80 then
        "B"

    else if score >= 70 then
        "C"

    else if score >= 60 then
        "D"

    else
        "F"




--Exercise 2: Character Categorizer using an if-else expression


categorizeCharacter : Char -> String
categorizeCharacter char =
    if
        char
            == 'a'
            || char
            == 'e'
            || char
            == 'i'
            || char
            == 'o'
            || char
            == 'u'
            || char
            == 'A'
            || char
            == 'E'
            || char
            == 'I'
            || char
            == 'O'
            || char
            == 'U'
    then
        "Vowel"

    else if Char.isDigit char then
        "Digit"

    else if (char >= 'a' && char <= 'z') || (char >= 'A' && char <= 'Z') then
        "Consonant"

    else
        "Unknown"

    

    -- Exercise 3: Age Group Classifier using ifElse


classifyAge : Int -> String
classifyAge age =
    if age < 0 then
        "Invalid Age"

    else if age <= 12 then
        "Child"

    else if age <= 19 then
        "Teenager"

    else if age <= 64 then
        "Adult"

    else if age <= 122 then
        "Senior"

    else if age <= 968 then
        "Guinness World Records, let's goooooooo!"

    else if age >= 969 then
        "Methuselah?!"

    else
        "Invalid Age"


--Exercise 4: Days of Christmas using if-else


getGiftForDay : Int -> String
getGiftForDay day =
    if day == 1 then
        "A Partridge in a Pear Tree"

    else if day == 2 then
        "Two Turtle Doves"

    else if day == 3 then
        "Three French Hens"

    else if day == 4 then
        "Four Calling Birds"

    else if day == 5 then
        "Five Golden Rings"

    else if day == 6 then
        "Six Geese a Laying"

    else if day == 7 then
        "Seven Swans a Swimming"

    else if day == 8 then
        "Eight Maids a Milking"

    else if day == 9 then
        "Nine Ladies Dancing"

    else if day == 10 then
        "Ten Lords a Leaping"

    else if day == 11 then
        "Eleven Pipers Piping"

    else if day == 12 then
        "Twelve Drummers Drumming"

    else
        "Invalid Day"


--Exercise 4: Days of Christmas using case


getGiftFortheDay : Int -> String
getGiftFortheDay day =
    case day of
        1 ->
            "A Partridge in a Pear Tree"

        2 ->
            "Two Turtle Doves"

        3 ->
            "Three French Hens"

        4 ->
            "Four Calling Birds"

        5 ->
            "Five Golden Rings"

        6 ->
            "Six Geese a Laying"

        7 ->
            "Seven Swans a Swimming"

        8 ->
            "Eight Maids a Milking"

        9 ->
            "Nine Ladies Dancing"

        10 ->
            "Ten Lords a Leaping"

        11 ->
            "Eleven Pipers Piping"

        12 ->
            "Twelve Drummers Drumming"

        _ ->
            "Invalid Day"


-- Exercise 5: Valid Date Checker using ifElse


checkValidDate : String -> Int -> String
checkValidDate month day =
    if month == "January" || month == "March" || month == "May" || month == "July" || month == "August" || month == "October" || month == "December" then
        if day >= 1 && day <= 31 then
            "Valid Date"

        else
            "Invalid Date: " ++ month ++ " has only 31 days"

    else if month == "April" || month == "June" || month == "September" || month == "November" then
        if day >= 1 && day <= 30 then
            "Valid Date"

        else
            "Invalid Date: " ++ month ++ " has only 30 days"

    else if month == "February" then
        if day >= 1 && day <= 28 then
            "Valid Date"

        else
            "Invalid Date: February has only 28 days"

    else
        "Invalid Date: '" ++ month ++ "' is not a valid month"



--Exercise 5: Valid Date Checker using case statement.


checkCorrectDate : String -> Int -> String
checkCorrectDate month day =
    case month of
        "January" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: January has only 31 days"

        "February" ->
            if day >= 1 && day <= 28 then
                "Valid Date"

            else
                "Invalid Date: February has only 28 days"

        "March" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: March has only 31 days"

        "April" ->
            if day >= 1 && day <= 30 then
                "Valid Date"

            else
                "Invalid Date: April has only 30 days"

        "May" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: May has only 31 days"

        "June" ->
            if day >= 1 && day <= 30 then
                "Valid Date"

            else
                "Invalid Date: June has only 30 days"

        "July" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: July has only 31 days"

        "August" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: August has only 31 days"

        "September" ->
            if day >= 1 && day <= 30 then
                "Valid Date"

            else
                "Invalid Date: September has only 30 days"

        "October" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: October has only 31 days"

        "November" ->
            if day >= 1 && day <= 30 then
                "Valid Date"

            else
                "Invalid Date: November has only 30 days"

        "December" ->
            if day >= 1 && day <= 31 then
                "Valid Date"

            else
                "Invalid Date: December has only 31 days"

        _ ->
            "Invalid Date: '" ++ month ++ "' is not a valid month"


--Exercise 6: Traffic Light Simulator
--A function to simulate a traffic light using if-else statements


simulateTrafficLight : String -> String
simulateTrafficLight colour =
    if colour == "Red" then
        "Stop"

    else if colour == "Yellow" then
        "Prepare to stop"

    else if colour == "Green" then
        "Go"

    else
        colour ++ "? Gurl, Are we on Mars? I need a break!"



--Exercise 6: Traffic Light Simulator
--A function to simulate a traffic light using if-else statements


simulateTrafficLight : String -> String
simulateTrafficLight colour =
    if colour == "Red" then
        "Stop"

    else if colour == "Yellow" then
        "Prepare to stop"

    else if colour == "Green" then
        "Go"

    else
        colour ++ "? Gurl, Are we on Mars? I need a break!"



--Exercise 6: Traffic Light Simulator
--A function to simulate a traffic light using a case expression


trafficLightSimulator : String -> String
trafficLightSimulator colour =
    case colour of
        "Red" ->
            "Stop"

        "Yellow" ->
            "Prepare to stop"

        "Green" ->
            "Go"

        _ ->
            colour ++ "? Gurl, Are we on Mars? I need a break!"

--Exercise 7: Month Number to Name Converter
-- A function to return the name of the corresponding month using if-else statements


getMonthName : Int -> String
getMonthName monthNumber =
    if monthNumber == 1 then
        "January"

    else if monthNumber == 2 then
        "February"

    else if monthNumber == 3 then
        "March"

    else if monthNumber == 4 then
        "April"

    else if monthNumber == 5 then
        "May"

    else if monthNumber == 6 then
        "June"

    else if monthNumber == 7 then
        "July"

    else if monthNumber == 8 then
        "August"

    else if monthNumber == 9 then
        "September"

    else if monthNumber == 10 then
        "October"

    else if monthNumber == 11 then
        "November"

    else if monthNumber == 12 then
        "December"

    else
        "Yeah, right, there's a 13th month!"


--Exercise 7: Month Number to Name Converter
-- A function to return the name of the corresponding month using a case expression


findMonthName : Int -> String
findMonthName monthNumber =
    case monthNumber of
        1 ->
            "January"

        2 ->
            "February"

        3 ->
            "March"

        4 ->
            "April"

        5 ->
            "May"

        6 ->
            "June"

        7 ->
            "July"

        8 ->
            "August"

        9 ->
            "September"

        10 ->
            "October"

        11 ->
            "November"

        12 ->
            "December"

        _ ->
            "Yeah, right, there's a 13th month!"


--Exercise 8: 24-hour to 12-hour Format Converter
-- A function to convert 24-hour format to 12-hour format using if-else statements


change24HourTo12Hour : Int -> ( Int, String )
change24HourTo12Hour hour =
    if hour >= 0 && hour <= 23 then
        if hour == 0 then
            ( 12, "AM" )

        else if hour < 12 then
            ( hour, "AM" )

        else if hour == 12 then
            ( 12, "PM" )

        else
            ( hour - 12, "PM" )

    else
        ( -1, "Extra time? Wake up, This isn't football, hun!" )


-- Exercise 9: FizzBuzz Variant
-- A function for the FizzBuzz game with humorous twists using if-else statements


fizzBuzzTwist : Int -> String
fizzBuzzTwist number =
    if modBy 3 number == 0 && modBy 5 number == 0 then
        "FizzBuzz"

    else if modBy 3 number == 0 then
        "Fizz"

    else if modBy 5 number == 0 then
        "Buzz"

    else if number > 100 then
        String.fromInt number ++ " - Just another number in the universe!"

    else if number < 0 then
        "Buzzing into the negatives, are we? Better don't be negative in life"

    else
        String.fromInt number

