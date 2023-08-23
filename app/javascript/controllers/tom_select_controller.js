import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    console.log(this.element)
    new TomSelect(this.element ,{
      create: true,
      sortField: {
        field: "text",
        direction: "asc"
      }
    });
  }
}
