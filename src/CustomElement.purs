module Halogen.CustomElement
  ( define
  ) where

import Prelude

import Effect (Effect)
import Effect.Aff (Aff)
import Halogen as H
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.VDom.Driver as Driver
import Web.HTML (HTMLElement)

foreign import define_ :: String -> (HTMLElement -> Effect Unit) -> Effect Unit

define
  :: forall query output
   . String
  -> H.Component HH.HTML query Unit output Aff
  -> Effect Unit
define name component = do
  define_ name render
  where
  render el =
    HA.runHalogenAff $ Driver.runUI component unit el
