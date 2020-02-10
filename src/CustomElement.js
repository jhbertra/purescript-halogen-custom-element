exports.define_ = name => render => () => {
  class HalogenElement extends HTMLElement {
    connectedCallback() {
      render(this)();
    }
  }
  customElements.define(name, HalogenElement);
};
