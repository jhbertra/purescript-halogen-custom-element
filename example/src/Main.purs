module Main where

import Prelude

import Effect (Effect)
import Halogen.CustomElement as CustomElement
import Hello (component)

main :: Effect Unit
main = do
  CustomElement.define "halogen-hello" component
