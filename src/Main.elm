module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (..)



main =
  Browser.sandbox {init=init, update=update, view=view}

type alias Model = Int

init : Model
init = 0

type Msg = Up | Down
update : Msg -> Model -> Model
update msg = case msg of
    Up -> (+) 1
    Down -> \a -> a - 1

view : Model -> Html Msg
view n = div [] [button [onClick Up] [text "+"], button [onClick Down] [text "-"], h1 [] [String.fromInt n |> text]]