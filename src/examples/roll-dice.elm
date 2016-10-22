import Html exposing (Html, Attribute, div, input, text)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String

-- Model

type alias Model =
  { dieFace : Int }

-- View

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text (toString model.dieFace) ]
    , button [ onClick Roll ] [ text "Roll" ]
    ]

-- Update

type Msg = Roll

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Roll ->
      (model, Cmd.none)
