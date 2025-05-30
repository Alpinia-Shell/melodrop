// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap/dist/js/bootstrap.bundle" // ←これ重要！Popper込み
import "bootstrap/dist/css/bootstrap.min.css" // ←CSSも読み込んでおくと安心

Rails.start()
Turbolinks.start()
ActiveStorage.start()