module Main exposing (main)

import Html exposing (Html, br, div, text)
import List exposing (intersperse, map, range)


main =
    let
        arr =
            range 1 30
    in
    div []
        [ div []
            (intersperse (br [] []) (map fizzbuzz arr))
        , div [] [ text "a" ]
        ]



--fizzbuzz : Int -> Html msg


fizzbuzz num =
    text <|
        if num % 15 == 0 then
            "fizzbuzz"
        else if num % 3 == 0 then
            "fizz"
        else if num % 5 == 0 then
            "buzz"
        else
            toString <| num
