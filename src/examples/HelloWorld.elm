import Html exposing (text, p)
import Html.Attributes exposing (..)


-- Greetings

sayHello greeting =
  greeting ++ " world"

fullGreeting = sayHello "Goodbye"
  |> sayHello


-- Add

add a b =
  a + b

result =
  add 1 2
  |> add 10
  |> add 7
  |> \a -> a * 2


-- Stateless example

counter =
  0

increment amount =
  counter = counter + amount


-- Main

main =
  p [ ]
    [ text (toString increment 9) ]
