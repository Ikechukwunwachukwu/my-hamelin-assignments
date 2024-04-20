# Part One:

## Identifying the Type of Given Values.

### Instructions: For each of the following Elm values, write down its most specific type.\_

1.  _42_ : **Number**

2.  _True_ : **Bool**

3.  _3.14_ : **Float**

4.  _'a'_ : **Char**

5.  _[1, 2, 3]_ : **List Number**

6.  _"Hello, Elm!"_ : **String**

7.  _['a', 'b', 'c']_ : **List Char**

8.  _(True, 'a')_ : **(Bool, Char)**

9.  _Just "Hello"_ : **Maybe String**

10. _Nothing_ : **Maybe a**

11. _(4 // 1)_: **(Int)**

12. _[]_ : **List a**

13. _[True, False, True]_ : **List Boolean**

14. _Just Nothing_ : **Maybe Nothing**

15. _[Just 5, Nothing, Just 10]_ : **List (Maybe Int)**

16. _[Just 'a', Nothing]_ : **List (Maybe Char)**

17. _[(1, 'a'), (2, 'b')]_ : **List (Int, Char)**

18. _[(True, "Yes"), (False, "No")]_ : **List (Bool, String)**

19. _Just (Just 'a')_ : **Maybe (Maybe Char)**

20. _("Hello", [1, 2, 3])_ : **(String, List Int)**

21. _(42, [True, False], Just 'c')_ : **(Int, List Bool, Maybe Char)**

22. _[(True, 42), (False, 24)]_ : **List (Bool, Int)**

23. _[Just "Hello", Nothing, Just "World"]_ : **List (Maybe String)**

24. _("Elm", Just [False, True], ('a', 42))_: **(String, Maybe (List Bool), (Char, Int))**

25. _[["Go", "Java", "Python"], ["Elm", "JavaScript", "C++"], ["HTML", "CSS"]]_ : **List (List String)**

# Part Two:

## Providing Values That Satisfy Specified Types.

### Instructions: For each of the following Elm types, provide three values that satisfy the type.\_

1.  _Int_ : **0, -5, 10, 300**

2.  _Bool_ : **True, False**

3.  _Float_ : **3.14, 0.0, -2.5, 100.2**

4.  _Char_ : **'a', 'Z', '!' '@'**

5.  _[Int]_ : **[1], [-5, 0], [100, 200, 300]**

6.  _String_ : **"Hello", "World", "", "10"**

7.  _List Char_ : **['a', 'b', 'c'], ['N', 'W', 'A', 'N', 'K', 'W', 'O'], ['E', 'l', 'm']**

8.  _(Bool, Char)_ : **(True, 'a'), (False, '&'), (not True, '!')**

9.  _Maybe String_ : **Just "Hello", Nothing, Just ""**

10. _List (Bool, Int)_ : **[(True, 1), (False, 0), (True, -1)]**

11. _Maybe Int_ : **Just 42, Just 1**

12. _List a_ : **[1, 2, 3], ['a', 'b', 'c'], []**

13. _Maybe a_ : **Just 5, Nothing, Just 'x'**

14. _[Bool]_ : **[True], [False, True], [True, False, not True]**

15. _List (Maybe Int)_ : **[Just 42, Nothing, Just (-5)]**

16. _List (Int, Char)_ : **[(1, 'a'), (2, 'B'), (-3, '*')]**

17. _Maybe (Maybe Char)_ : **Just (Just 'a'), Just (Just '+')**

18. _List (Bool, String)_ : **[(True, "Yes"), (False, "No"), (not True, "Maybe")]**

19. _List (Maybe Char)_ : **[Just 'a', Just '$']**

20. _Maybe [Int]_ : **Just [1, 2, 3], Just [-1, -2, -5]**

21. _(String, [Int])_ : **("Elm", [1, 2, 3]), ("Github", [42]), ("", [-6])**

22. _(Int, [Bool], Maybe Char)_ : **(42, [True, False], Just 'a'), (-10, [not True], Just '£')**

23. _Maybe (Maybe Int)_ : **Just (Just 42), Just (Just -10)**

24. _(String, Maybe [Bool], (Char, Int))_ : **("Elm", Just [True, False], ('a', 42)), ("Hello", Just [False], ('!', 0))**

25. _(String, List (Maybe Float))_ : **("Phone", [Just 5.2]), ("Android", [Just 6.7])**
