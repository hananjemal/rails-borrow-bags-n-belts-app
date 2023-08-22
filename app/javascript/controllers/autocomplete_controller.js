import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ['searchableElement']
  connect() {
    console.log("Hello from toggle_controller.js")
  }
   search(e) {
    console.log(e)
   }
}
