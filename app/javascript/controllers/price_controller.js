import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["from", "to", "totalPrice"]
  static values = {
    dayPrice: Number
  }

  connect() {

  }
  calculateTotalPrice(){
    const from = this.fromTarget.value;
    const to = this.toTarget.value;


    const date_to = to.split("-")
    const date_to_year = date_to[0]
    const date_to_month = date_to[1]
    const date_to_day = date_to[2]

    const date_from = from.split("-")
    const date_from_year = date_from[0]
    const date_from_month = date_from[1]
    const date_from_day = date_from[2]

    const year = date_to_year - date_from_year
    const month = date_to_month - date_from_month
    const days = date_to_day - date_from_day

    const days_rented = year*365 + month*30 + days + 1
    console.log(days_rented)

    if (from && to && days_rented>0) {
      this.totalPriceTarget.textContent= `Total Price : ${this.dayPriceValue * days_rented}$`
    }
  }
}
