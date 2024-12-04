import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["slider"];

  connect() {
    this.index = 0;
  }

  next() {
    this.index += 1;
    this.updateSlider();
  }

  previous() {
    if (this.index > 0) this.index -= 1;
    this.updateSlider();
  }

  updateSlider() {
    this.sliderTargets.forEach((slide, idx) => {
      slide.style.transform = `translateX(-${this.index * 100}%)`;
    });
  }
}
