import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="key-button"
export default class extends Controller {
  static target = ["form"]
  
  connect() {
    console.log("Connected")
  }

  update(event) {
    event.preventDefault()
    console.log("Update action")
    const url = this.formTarget.action

    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })
  }
}
