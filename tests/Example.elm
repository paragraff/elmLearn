module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Week1 exposing (..)


suite : Test
suite =
  describe "The String module"
    [ describe "Week1 myLast"
        [ test "should return Maybe last element of the List" <|
            \_ -> Expect.equal (Just 5) (Week1.myLast [1, 2, 3, 5])
          , test "should return Nothing for an empty List" <|
            \_ -> Expect.equal Nothing (Week1.myLast [])
        ]
    , describe "Week1 myButLast"
        [ test "should return Maybe but last element for a simple palindrome List" <|
            \_ -> Expect.equal (Just 3) (Week1.myButLast [1,2,3,4])
          , test "should return Nothing for an List with just one element" <|
            \_ -> Expect.equal Nothing (Week1.myButLast [4])
          , test "should return Nothing for an empty List" <|
            \_ -> Expect.equal Nothing (Week1.myButLast [])
        ]
    , describe "Week1 elementAt"
        [ test "should return Maybe n element for a simple List" <|
            \_ -> Expect.equal (Just 2) (Week1.elementAt [1,2,3] 2)
          , test "should return Nothing if n more than list's length" <|
            \_ -> Expect.equal Nothing (Week1.elementAt [1,2,3,4,5] 6)
          , test "should return Nothing if n less than 1" <|
            \_ -> Expect.equal Nothing (Week1.elementAt [1,2,3,4,5] 0)
        ]
    , describe "Week1 myLength"
        [ test "should return True for a simple palindrome List" <|
            \_ -> Expect.equal True (Week1.isPalindrome [1, 2, 3, 3, 2, 1])
        ]
    ]
