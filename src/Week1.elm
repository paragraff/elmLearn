module Week1 exposing (clap, compress, dropEvery, elementAt, isPalindrome, myButLast, myLast, myLength, myReverse)

--1
-- List.reverse list |> list.head
-- list = List.foldl (Just >> always) Nothing list


myLast list =
    List.foldl (\var arr -> Just var) Nothing list



--3


elementAt list at =
    if List.length list < at then
        Nothing

    else
        List.take at list |> List.reverse |> List.head



--2


myButLast list =
    elementAt list (List.length list - 1)



--4


myLength list =
    List.foldl (\num result -> result + 1) 0 list



--5


myReverse list =
    List.foldl (\num arr -> num :: arr) [] list



--6


isPalindrome list =
    List.all (\compare -> compare) (List.map2 (\x y -> x == y) list (myReverse list))



--7


compress str =
    let
        removeRepetitions chr result =
            if List.head result /= Just chr then
                chr :: result

            else
                result
    in
    List.foldl removeRepetitions [] (String.toList str) |> String.fromList |> String.reverse


--8


dropEvery str dropNum =
    let
        filterDropNum value =
            modBy dropNum (Tuple.first value + 1) /= 0

        getChar value =
            Tuple.second value
    in
    if dropNum /= 0 then
        String.toList str
            |> List.indexedMap Tuple.pair
            |> List.filter filterDropNum
            |> List.map getChar
            |> String.fromList

    else
        ""



--9


clap str =
    str |> String.words |> String.join " 👏 "
