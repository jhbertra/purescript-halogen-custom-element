# purescript-halogen-custom-element

A library to convert Halogen components to [custom elements](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_custom_elements).

## Usage

```
import Halogen.CustomElement as CustomElement

main :: Effect Unit
main = do
  CustomElement.define "halogen-hello" component
```

Now include `main.js` in your HTML file, then put `<halogen-hello></halogen-hello>` anywhere in your HTML, and the Halogen component will be rendered there.

The original purpose of this library is to support putting Halogen component inside Markdown, so that write documentation together with demos becomes easy. See the [documentation of halogen-nselect](https://nonbili.github.io/purescript-halogen-nselect/) as an example.

## Limitation

Currently, the component passed to `CustomElement.define` is required to have `Unit` as input type.

```purescript
module Halogen.CustomElement (define) where

define
  :: forall query output
   . String
  -> H.Component HH.HTML query Unit output Aff
  -> Effect Unit
```

However, I think it's possible to collect all attributes of the defined custome element, and pass a `Foreign` or `Json` back to the underlying Halogen component.


## Development

```
cd example
yarn start
```
