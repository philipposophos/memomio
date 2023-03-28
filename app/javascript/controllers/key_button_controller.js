import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="key-button"
export default class extends Controller {
  static targets = ["key", "input"]
  
  connect() {
    console.log("Connected")
  }


  displayForm() {
    this.keyTarget.classList.remove("d-none")
  }

  update(event) {
    event.preventDefault()
    const url = this.keyTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.keyTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })
  }
}
