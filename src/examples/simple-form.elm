import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


main =
  App.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model =
  { name : String
  , password : String
  , passwordConfirm : String
  }


model : Model
model =
  Model "" "" ""


-- UPDATE

type Msg
    = Name String
    | Password String
    | PasswordConfirm String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Name name ->
      { model | name = name }

    Password password ->
      { model | password = password }

    PasswordConfirm password ->
      { model | passwordConfirm = password }

-- View

view : Model -> Html Msg
view model =
  div []
    [ input [ type' "text", placeholder "Name", onInput Name ] []
    , input [ type' "password", placeholder "Password", onInput Password ] []
    , input [ type' "password", placeholder "Re-enter Password", onInput PasswordConfirm ] []
    , viewValidation model
    ]

-- Validation

viewValidation : Model -> Html msg
viewValidation model =
  let
    (color, message) =
      if model.password == model.passwordConfirm then
        ("green", "ok")
      else
        ("red", "Womp")
  in
    div [ style [("color", color), ("border", "1px solid " ++ color)] ][ text message ]






