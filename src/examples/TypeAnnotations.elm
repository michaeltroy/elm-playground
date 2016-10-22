import Html exposing (div, text, p, a, header)
import Html.Attributes exposing (..)


type alias Item =
  { name : String
  , price : Float
  , qty : Int
  , discounted : Bool
  }

-- Records

cart : List Item
cart =
  [ { name = "Lemon", price = 0.5, qty = 1, discounted = False}
  , { name = "Apple", price = 1.0, qty = 5, discounted = False}
  , { name = "Pears", price = 1.23, qty = 1, discounted = False}
  ]


-- Discount on items

discount : Int -> Float -> Item -> Item
discount minQuantity discountPercent item =
  if not item.discounted && item.qty >= minQuantity then
    { item
      | price = item.price * (1.0 - discountPercent)
      , discounted = True
    }
  else
    item


-- New cart

newCart : List Item
newCart =
  List.map ((discount 10 0.3) >> (discount 5 0.2)) cart


-- Main

main : Html.Html msg
main =
  p [ ]
    [ text (toString newCart) ]
