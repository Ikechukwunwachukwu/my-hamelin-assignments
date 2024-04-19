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
