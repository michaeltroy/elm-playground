import Html

main =
  Html.text (toString toPrint)

-- maxium : List comparable -> comparable

maximum list =
  case list of
    [] -> Debug.crash "Maxium of empty list"
    [x] -> x
    (x::xs) ->
      let
        maxTail = maximum xs
      in
        if x > maxTail then
          x
        else
          maxTail

-- repeat : Int -> a -> List a

repeat n x =
  if n <= 0 then
    []
  else
    x :: repeat (n-1) x

-- Print

toPrint = repeat 0 12
