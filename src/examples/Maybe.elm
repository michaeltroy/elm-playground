import Html exposing (div, text, p, a, header)
import Html.Attributes exposing (..)


-- Maybe

type alias Person =
  { name : String
  , age : Maybe Int
  }

eric  = { name = "eric", age = Just 42 }
sally = { name = "sally", age = Nothing }


-- Main

main =
  p [ ]
    [ text myNumber ]
