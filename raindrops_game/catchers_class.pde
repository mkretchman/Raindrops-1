class catchers {
  PVector loc;

  catchers() {
    loc = new PVector(mouseX, mouseY);
  }

  void show() {
    loc.set(mouseX,mouseY);
    ellipse(mouseX, mouseY, d, d);
  }
}

