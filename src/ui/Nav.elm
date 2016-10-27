module Nav exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import String



-- Say hello

simpleNav : String -> Html a
simpleNav item =
  li [ ] [ text item ]
