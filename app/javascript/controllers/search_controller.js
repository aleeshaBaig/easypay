import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
    console.log("Seach is connected");
  }
  submit(){
    console.log("Search got called");
    this.element.requestSubmit();
  }
}
