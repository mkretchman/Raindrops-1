class catcher {
  PVector loc;
  int d;

  catcher() {
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

