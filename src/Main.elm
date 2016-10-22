import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App exposing (..)
import Html.Events exposing (onClick)
import Array exposing (Array)
import String

import Greeting exposing (sayHello, sayGoodbye)
import Nav exposing (simpleNav)


-- Types


type alias Model =
  { nav : List String
  , alert : String
  }


type Msg
  = SendAlert


-- Inital Model


initialModel : Model
initialModel =
  { nav =
    [ "item1", "item2", "item3" ]
  , alert = "hello I am a alert!"
  }


-- Content


contentBlock =
  "My block of text"


-- View

view : Model -> Html Msg
view model =
  div [ id "app" ] [
    p [ class "print-out" ] [ text ( toString model ) ]
    , p [ class "text-block"] [ text contentBlock ]
    , p [ class "headline" ] [ text (sayGoodbye "Eric") ]
    , button [ type' "button", onClick SendAlert ] [ text "Press me" ]
  ]


-- Update


update : Msg -> Model -> Model
update msg model =
  case msg of
    SendAlert ->
      { model | alert = "Blah blah" }


-- Main


main =
  Html.App.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }

