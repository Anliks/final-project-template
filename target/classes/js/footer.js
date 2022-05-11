class MyFooter extends HTMLElement {
    connectedCallback() {
        this.innerHTML = '<div id="r">\n' +
            '      <div class="container">\n' +
            '          <div class="row centered">\n' +
            '              <div class="col-lg-8 col-lg-offset-2">\n' +
            '                  <h4>Помощь в подборе напитков</h4>\n' +
            '              </div>\n' +
            '          </div>\n' +
            '      </div>\n' +
            '  </div> <div id="f">\n' +
            '      <div class="container">\n' +
            '          <div class="row centered">\n' +
            '              <a href="#"><i class="fa fa-twitter"></i></a>\n' +
            '              <a href="#"><i class="fa fa-facebook"></i></a>\n' +
            '              <a href="#"><i class="fa fa-vk"></i></a>\n' +
            '          </div>\n' +
            '      </div>\n' +
            '  </div> '
    }
}
customElements.define('my-footer', MyFooter)