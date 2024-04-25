module Filtering exposing (..)

--Exercise 1: Filter Even Numbers
--Task: Write a function to filter out all even numbers from a list of integers.


oldNumbersOnly : List Int -> List Int
oldNumbersOnly integers =
    List.filter isOdd integers


isOdd : Int -> Bool
isOdd integer =
    modBy 2 integer /= 0



--Exercise 2: Filter Short Words
--Task: Create a function to exclude words shorter than 4 characters from a list of strings.


takeOutShortWords : List String -> List String
takeOutShortWords words =
    List.filter (\word -> String.length word >= 4) words



{- isWordShort : String -> Bool
   isWordShort word =
       String.length word >= 4
-}
--Exercise 3: Filter High Scores
--Task: Develop a function to filter out scores below 75 from a list of student scores.


scoresAbove75 : List Int -> List Int
scoresAbove75 scores =
    List.filter (\score -> score > 75) scores



{- isAbove75 : Int -> Bool
   isAbove75 score =
       score > 75
-}
--Exercise 4: Filter Out Words Starting with 'A'
--Task: Create a function to filter out words that start with the letter 'A',
--regardless of case, from a list of strings.


wordsNotStartingWithA : List String -> List String
wordsNotStartingWithA words =
    List.filter wordNotStartingWithA words


wordNotStartingWithA : String -> Bool
wordNotStartingWithA word =
    String.toLower (String.left 1 word) /= "a"



--Exercise 5: Filter Specific Character (Case Insensitive)
--Task: Filter out all words that do NOT start with the letter 'A',
--regardless of case, from a list of strings.


wordsStartWithA : List String -> List String
wordsStartWithA words =
    List.filter isWordStartsWithA words


isWordStartsWithA : String -> Bool
isWordStartsWithA word =
    String.toLower (String.left 1 word) == "a"



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
    List.filter isAdultFemale people


isAdultFemale : Person -> Bool
isAdultFemale person =
    person.age >= 18 && person.gender == Female



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



--Exercise 12: Filter by Permission
--Task: Filter out all users from a list who do not have 'admin' level permissions.
--Assume each user record includes fields for full name, username, and permission level.


type alias UserPerson =
    { fullName : String
    , username : String
    , permission : Permission
    }


type Permission
    = Admin
    | User


filterAdminUsers : List UserPerson -> List UserPerson
filterAdminUsers users =
    List.filter (\user -> user.permission == Admin) users



--Exercise 13: Filter Products by Price
--Task: Remove all products from a list that are priced above $5.00.
--Assume each product record includes fields for product name, category, and price.


type alias Product =
    { productName : String
    , category : String
    , price : Float
    }


filterProductsByPrice : List Product -> List Product
filterProductsByPrice products =
    List.filter (\product -> product.price <= 5.0) products



--Exercise 15: Filter Animals by Habitat
--Task: Filter out all animals that do not live in aquatic habitat from a list.
-- Assume each animal record includes fields for name, species, and habitat.
--Context: The possible habitats for animals are as follows:
--Aquatic: For animals living primarily in water, like sharks and whales.
--Terrestrial: For land-dwelling animals, such as bears and rabbits.
--Arboreal: For animals that live in trees, like tree frogs.


type alias Animal =
    { name : String
    , species : String
    , habitat : Habitat
    }


type Habitat
    = Aquatic
    | Terrestrial
    | Arboreal


filterAquaticAnimals : List Animal -> List Animal
filterAquaticAnimals animals =
    List.filter (\animal -> animal.habitat == Aquatic) animals



--Exercise 16: Filter by Tag
--Task: Exclude all items from a list that do not have a specific tag attached.
--Assume each item record includes fields for item name, price, and a list of tags.
--Your function should be able to filter by just any tag that's passed to it as argument.


type alias Item =
    { itemName : String
    , price : Float
    , tags : List Tag
    }


type Tag
    = Electronics
    | Portable
    | Furniture
    | Clothing


filterItemsByTag : Tag -> List Item -> List Item
filterItemsByTag tag items =
    List.filter (\item -> List.member tag item.tags) items



--Exercise 14: Filter Products by Converted Prices
--Task: Remove all products from a list whose price, when converted to U.S. dollars,
--is above $5.00. Each product record includes a price that is a record with fields for amount
--and currency. Use the provided conversion rates to convert prices to U.S. dollars before filtering.
{- Conversion Rates:

   EUR to USD: 1.18
   GBP to USD: 1.31
   CAD to USD: 0.79

   Example Inputs and Outputs
   Input: [{productName = "Milk", category = "Dairy",
   price = {amount = 4.00, currency = USD}},
   {productName = "Cheese", category = "Dairy",
   price = {amount = 5.00, currency = EUR}}]
-}


type alias ProductV2 =
    { productName : String, category : String, price : Price }


type alias Price =
    { amount : Float, currency : Currency }


type Currency
    = EUR
    | GBP
    | USD
    | CAD



{- EUR to USD: 1.18
   GBP to USD: 1.31
   CAD to USD: 0.79
-}


convertToDollar : Price -> Price
convertToDollar price =
    case price.currency of
        USD ->
            price

        EUR ->
            { amount = price.amount * 1.18, currency = USD }

        GBP ->
            { amount = price.amount * 1.31, currency = USD }

        CAD ->
            { amount = price.amount * 0.79, currency = USD }


filterByPrice : List ProductV2 -> List ProductV2
filterByPrice products =
    List.filter
        (\product ->
            (convertToDollar product.price).amount <= 5.0
        )
        products


filterByPriceV2 : List ProductV2 -> List ProductV2
filterByPriceV2 products =
    List.filter fiveDollarsOrUnder products


fiveDollarsOrUnder : ProductV2 -> Bool
fiveDollarsOrUnder product =
    let
        productPrice =
            product.price

        productPriceInDollar =
            convertToDollar productPrice

        amountInDollar =
            productPriceInDollar.amount
    in
    amountInDollar <= 5
