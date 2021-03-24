// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//let upto = 10;
//let i = 0;

//while (i <upto) {
//    console.log(i);
//        i += 1;
//}
let name = "brad"

if (name === "jody") {
    console.log(name)
}
console.log(name)
//document.addEventListener('turbolinks:load', ())
//let h2 = document.querySelector('h2');

//console.log(h2);
// require('../hello')