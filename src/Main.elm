module Main exposing (main)

import Browser
import Browser.Navigation exposing (load)
import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css)
import Html.Styled.Events exposing (..)


main =
    Browser.element { init = init, update = update, view = view >> toUnstyled, subscriptions = always Sub.none }


type alias Model =
    Int


init : () -> ( Model, Cmd Msg )
init _ =
    ( 0, Cmd.none )


type Msg
    = Up
    | Down


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Up ->
            if model + 1 >= 100 then
                ( model, "h" ++ "tt" ++ "ps" ++ "://w" ++ "ww.yo" ++ "utu" ++ "be.c" ++ "om/wa" ++ "tch?" ++ "v=oHg5" ++ "SJYRHA0" |> load )

            else
                ( model + 1, Cmd.none )

        Down ->
            ( model - 1, Cmd.none )


buttonStyle =
    css
        [ transform (scale2 2 2)
        , margin (Css.em 2)
        , width (Css.em 2)
        , height (Css.em 1.5)
        ]


view : Model -> Html Msg
view n =
    div
        [ css
            [ displayFlex
            , justifyContent center
            , alignItems center
            , flexDirection column
            ]
        ]
        [ h1 [] [ text "99% can't get to 100" ]
        , h1 [] [ String.fromInt n |> text ]
        , div []
            [ button [ onClick Up, buttonStyle ] [ text "+" ]
            , button [ onClick Down, buttonStyle ] [ text "-" ]
            ]
        ]
