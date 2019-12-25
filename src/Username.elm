module Username exposing (Username, decoder, encode)

import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode exposing (Value)
import Url.Parser


type Username
    = Username String


decoder : Decoder Username
decoder =
    Decode.map Username Decode.string


encode : Username -> Value
encode (Username username) =
    Encode.string username


toString : Username -> String
toString (Username username) =
    username


urlParser : Url.Parser.Parser (Username -> a) a
urlParser =
    Url.Parser.custom "USERNAME" (\str -> Just (Username str))
