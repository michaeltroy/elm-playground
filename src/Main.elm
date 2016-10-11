import Html exposing (div, text, p, a, header)
import Html.Attributes exposing (..)
import Greeting exposing (sayHello, sayGoodbye)

-- Content

contentBlock =
  "My block of text"

main =
  div [ id "app" ] [
    p [ class "text-block"][ text contentBlock ],
    p [ class "headline" ][ text (sayGoodbye "Eric") ]
  ]
