import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

// Connects to data-controller="star-rating"
export default class extends Controller {
  static targets = ["rating"];

  connect() {
    // Checar se o controller conectou
    console.log("conectei o controller")

    // Funcionamento do form
    new StarRating(this.element)

    // Funcionamento do show de company
    this.ratingTargets.forEach((target) => {
      const ratingValue = parseInt(target.dataset.ratingValue, 10);
      new StarRating(target, { initialRating: ratingValue });
    });
  }
}
