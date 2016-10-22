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
  , appColor : String
  }


type Msg
  = ChangeAppColor


-- Inital Model


initialModel : Model
initialModel =
  { nav =
    [ "item1", "item2", "item3" ]
  , appColor = "blue"
  }


-- Nav


pageNav : Array String
pageNav =
  Array.fromList
    initialModel.nav


-- View

view : Model -> Html Msg
view model =
  div [ id "app", class ( model.appColor ) ] [
    p [ class "print-out" ] [ text ( toString model ) ]
    , p [ class "headline" ] [ text (sayGoodbye "Eric") ]
    , button [ type' "button", onClick ChangeAppColor ] [ text "Press me" ]
  ]


-- Update


update : Msg -> Model -> Model
update msg model =
  case msg of
    ChangeAppColor ->
      { model | appColor = "red" }


-- Main


main =
  Html.App.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }

