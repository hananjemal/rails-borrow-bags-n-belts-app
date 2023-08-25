import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

// Connects to data-controller="sweetalert2"
export default class extends Controller {
  static targets = ["items", "form"]
  connect() {
    console.log(this.formTarget)
  }

  send(event) {
    event.preventDefault()
    fetch(this.formTarget.action, {
      method: "POST", // Could be dynamic with Stimulus values
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.res) {
          Swal.fire({
            title: 'Item Booked!',
            icon: 'success',
            confirmButtonText: 'OK'
          }).then((result) => {
            if (result.isConfirmed) {
              // Redirect to a different page
              window.location.href = "/";
            }
          });
        } else {

          this.formTarget.outerHTML = data.form
        }
      })
    }


}
