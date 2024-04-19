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
