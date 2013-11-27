class catcher {
  PVector loc;
  int d;

  catcher() {
    d = 50;
    loc = new PVector(mouseX, mouseY);
  }

  void show() {
    ellipse(loc.x, loc.y, d, d);
  }
}

