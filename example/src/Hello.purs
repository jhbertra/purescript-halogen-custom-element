module Hello
  ( Message(..)
  , Action
  , component
  ) where

import Prelude

import Effect.Aff (Aff)
import Halogen as H
import Halogen.HTML as HH

type Message = Void

type Action = Void

type HTML = H.ComponentHTML Action () Aff

type DSL = H.HalogenM State Action () Message Aff

type State = Unit

initialState :: State
initialState = unit

render :: State -> HTML
render _ =
  HH.text "hello"

component :: forall q. H.Component q Unit Message Aff
component = H.mkComponent
  { initialState: const initialState
  , render
  , eval: H.mkEval $ H.defaultEval
  }
