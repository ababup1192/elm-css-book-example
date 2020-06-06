module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    Int


init : () -> ( Model, Cmd Msg )
init _ =
    ( 0, Cmd.none )



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, Cmd.none )

        Decrement ->
            ( model - 1, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    article [ id "main", class "ly_cont" ]
        [ div [ class "bl_media bl_media_imageWrapper" ]
            [ figure [ class "bl_media_imageWrapper" ]
                [ img [ src "https://d1f5hsy4d47upe.cloudfront.net/9e/9e2e4adcffa79c4df161f62e18b1f108_t.jpeg" ]
                    []
                ]
            , div [ class "bl_media_body" ]
                [ h2 [ class "bl_media_title" ]
                    [ text "ユーザーを考えた設計で満足な体験を"
                    ]
                , p []
                    [ text """
                提供するサービスやペルソナによって、webサイトの設計は異なります。
                サービスやペルソナに合わせた設計を行うことにより、訪問者にストレスのないよりよい体験を生み出し、満足を高めることとなります。<br>
                わたしたちはお客さまのサイトに合ったユーザビリティを考えるため、分析やヒアリングをきめ細かく実施、満足を体験できるクリエイティブとテクノロジーを設計・構築し、今までにない期待を超えたユーザー体験を提供いたします。
                """
                    ]
                , h3 [ class "subTitle" ] [ text "ペルソナとは？" ]
                , span [] [ text "自社商品、サービスの理想的・象徴的な顧客像のこと。アプローチする対象を明確" ]
                ]
            ]
        ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
