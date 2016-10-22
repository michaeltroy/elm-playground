import Html exposing (Html, div, text, h3, p, button)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App
import Maybe
import String


-- Model

type alias Model =
  { calories : Int
  , input : Int
  , error : Maybe String
  }

initModel : Model
initModel =
  { calories = 0
  , input = 0
  , error = Nothing
  }


-- Update

type Msg
  = AddCalorie
  | Input String
  | Clear

update : Msg -> Model -> Model
update msg model =
  case msg of
    AddCalorie ->
      { model
        | calories = model.calories + model.input
        , input = 0
      }

    Input val ->
      case String.toInt val of
        Ok input ->
          { model | input = input, error = Nothing }
        Err err ->
          { model | input = 0, error = Just err }

    Clear ->
      initModel


-- View (broken)

view : Model -> Html Msg
view model =
  div []
      [ h3 []
        [ text ("Total calories: " ++ (toString model.calories))
        , Html.input
          [ type' "text"
          , onInput Input
          , value
            ( if model.input == 0 then
                ""
              else
                toString model.input
            )
          ]

        , div [] [ text (Maybe.withDefault " model.error") ]
        , button
          [ type' "button", onClick AddCalorie ]
          [ text "Add" ]
        , button
          [ type' "button", onClick Clear ]
          [ text "Clear" ]
        , p [] [ text (toString model) ]
      ]
    ]


-- Main

main : Program Never
main =
  App.beginnerProgram
    { model = initModel
    , update = update
    , view = view
    }
