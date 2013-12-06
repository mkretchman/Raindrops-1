class timer {
  int old;
  int d;

  timer() {
    old = 0;
    d = 50;
  }

  void count() {
    if (millis() - old >= 200)  //this is when it'll do something
    {
      ellipse(random(255), random(255), d, d);
    }
  }
}

