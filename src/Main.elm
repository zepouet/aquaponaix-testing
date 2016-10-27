module Main exposing (..)

import Html exposing (Html, button, div, text, input, label)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }

-- MODEL

type alias Model = Int


model : Model
model = 0

type Msg = None

update : Msg -> Model -> Model
update msg model = model

-- View

view : Model -> Html Msg
view model =
  div [ id "lamp" ]
    [
      input [ type' "radio", name "switch", defaultValue "on" ] [ ],
      input [ type' "radio", name "switch", defaultValue "off", checked True ] [ ],
      label [ for "switch", class "entypo-lamp" ] [ text "" ],
      div [ class "lamp" ]
        [
          div [ class "gonna-give-light"] []
        ]
    ]

-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
