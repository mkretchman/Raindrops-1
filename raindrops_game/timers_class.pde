class timers {
  int old;

  timers() {
    old = 0;
  }

  boolean count() {
    boolean t = false;
    if (millis() - old >= 2)  //this is when it'll do something
    {
      old = millis();
      t = true;
    }
    return t;
  }
}
