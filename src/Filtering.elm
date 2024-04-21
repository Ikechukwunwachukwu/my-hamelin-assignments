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



--Exercise 5: Filter Specific Character (Case Insensitive)
--Task: Filter out all words that do NOT start with the letter 'A',
--regardless of case, from a list of strings.


startsWithOthers : List String -> List String
startsWithOthers words =
    List.filter (\word -> String.toLower (String.left 1 word) == "a") words



--Exercise 6: Filter Adults by Age and Gender
--Task: Write a function that filters out all people under 18 years old
--or whose gender is not specified as female from a list of person records.
--Each person record should include a name, age, and a gender.


type alias Person =
    { name : String
    , age : Int
    , gender : Gender
    }


type Gender
    = Male
    | Female


filterAdultFemales : List Person -> List Person
filterAdultFemales people =
    List.filter (\person -> person.age >= 18 && person.gender == Female) people



--Exercise 7: Filter Positive Numbers
--Task: Remove all non-positive numbers (zero and negatives) from a list of integers.


filterPositiveIntegers : List Int -> List Int
filterPositiveIntegers integers =
    List.filter (\integer -> integer > 0) integers



--Exercise 8: Filter Multiples of Five
--Task: Filter out all numbers that are not multiples of five from a list of integers.


filterMultiplesOfFive : List Int -> List Int
filterMultiplesOfFive integers =
    List.filter (\integer -> modBy 5 integer == 0) integers



--Exercise 9: Filter by Length
--Task: Write a function to exclude all elements whose length is not 5 from a list of lists.


filterByLength : List (List Int) -> List (List Int)
filterByLength integers =
    List.filter (\int -> List.length int == 5) integers



--Exercise 10: Filter Pending Tasks
--Task: From a list of tasks, filter out all tasks that are not marked as pending.
--Tasks can be marked as completed, pending, in progress, or under review.


type alias Task =
    { task : String
    , status : Condition
    }


type Condition
    = Completed
    | Pending
    | InProgress
    | Review


filterPendingTasks : List Task -> List Task
filterPendingTasks tasks =
    List.filter (\task -> task.status == Pending) tasks



--Exercise 11: Filter Valid Emails
--Task: Filter out all strings that do not exist in the form
--<first-part>@<second-part>.<third-part> from a list of potential email addresses.


filterValidEmailAdresses : List String -> List String
filterValidEmailAdresses emails =
    List.filter isValidEmailAddress emails


isValidEmailAddress : String -> Bool
isValidEmailAddress email =
    let
        parts =
            String.split "@" email
    in
    case parts of
        [ _, secondPart ] ->
            let
                domainParts =
                    String.split "." secondPart
            in
            List.length domainParts == 2

        _ ->
            False
