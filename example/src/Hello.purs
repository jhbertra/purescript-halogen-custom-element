module Hello
  ( Message(..)
  , Query
  , Action
  , component
  ) where

import Prelude

import Data.Const (Const)
import Effect.Aff (Aff)
import Halogen as H
import Halogen.HTML as HH

type Message = Void

type Query = Const Void

type Action = Void

type HTML = H.ComponentHTML Action () Aff

type DSL = H.HalogenM State Action () Message Aff

type State = Unit

initialState :: State
initialState = unit

render :: State -> HTML
render state =
  HH.text "hello"

component :: H.Component HH.HTML Query Unit Message Aff
component = H.mkComponent
  { initialState: const initialState
  , render
  , eval: H.mkEval $ H.defaultEval
  }
