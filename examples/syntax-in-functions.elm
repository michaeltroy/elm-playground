import Html

main =
  Html.text (toString toPrint)

-- lucky : number -> String

lucky x =
  case x of
    7 -> "You are lucky!"
    4 -> "It's a 4!"
    n -> "Womp womp " ++ toString n

-- Not between 1 and 5
-- factorial : number -> nuber

factorial n =
  case n of
    0 -> 1
    _ -> n * factorial (n - 1)

-- Two arguments

twoCents x y =
  x + y

-- Let bindings
-- they are very useful for naming the results
-- of more complicated expressions

-- cylinder : Float -> Float -> Float

cyclinder r h =
  let
    sideArea = 2 * pi * r * h
    topArea = pi * r ^2
  in
    sideArea + 2 * topArea

-- Print

toPrint = cyclinder 234324324 3






