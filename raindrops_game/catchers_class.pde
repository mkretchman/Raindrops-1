class catchers {
  PVector loc;
  int d;

  catchers() {
    d = 100;
    loc = new PVector(mouseX, mouseY);
  }

  void show() {
    loc.set(mouseX,mouseY);
    ellipse(mouseX, mouseY, d, d);
  }
  void move() {
  }
}

