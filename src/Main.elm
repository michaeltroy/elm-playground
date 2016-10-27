import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App exposing (..)
import Html.Events exposing (onClick)
import Array exposing (..)
import List exposing (..)
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


type alias Nav =
  { item : String }


renderNav item =
  li [] [ text item ]



renderMyList :  String -> Html a
renderMyList item =
  li [ class "blah" ] [ text ( "item: " ++ item ) ]

myList = ["one","two","three"]


-- View

view : Model -> Html Msg
view model =
  ul [] [
    ( List.map renderMyList myList )
    ]

-- div [ id "app", class ( model.appColor ) ] [
--   (List.map renderMyList myList)
--   , p [ class "print-out" ] [ text ( toString model ) ]
--   , p [ class "headline" ] [ text ( sayGoodbye "Eric" ) ]
--   , button [ type' "button", onClick ChangeAppColor ] [ text "Press me" ]
-- ]


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

