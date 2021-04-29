module Main where

import Prelude

import Effect (Effect)
import Elmish (ReactElement)
import Elmish.Boot (defaultMain)
import Elmish.HTML (CSS)
import Elmish.HTML as R
import React.Basic.Emotion as E
import Record (merge)
import Web.DOM.Element (className)


big :: E.Style
big =
  E.css
    { fontSize : E.px 40
    }


helloWorld :: ReactElement
helloWorld =  E.div { css: big , className : ""} $ R.text "Hello"

def :: forall t30 t32 t34 t36 t38 t40.
  Applicative t30 => Applicative t36 => { init :: t30 Unit
                                        , update :: t32 -> t34 -> t36 Unit
                                        , view :: t38 -> t40 -> ReactElement
                                        }
def = { init: pure unit
        , update: \_ _ -> pure unit
        , view: \_ _ -> helloWorld
        }

main :: Effect Unit
main =
  defaultMain
    { elementId: "app"
    , def: def
        
    }
