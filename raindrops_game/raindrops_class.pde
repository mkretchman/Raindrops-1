class raindrop {
  PVector loc, vel, acc;
  PImage drop;
  float tintx;

  raindrop() {
    drop = loadImage("drop.png");
    loc = new PVector(random(width), random(-1000, -drop.height));
    vel = new PVector(0, 2);
    acc = new PVector(0, .1);
    tintx = random(255);
  }

  void show() {
    tint(255, tintx);
    image(drop, loc.x, loc.y);
  }

  void fall() {
    loc.add(vel);
    if (loc.y >= 0) {
      vel.add(acc);
    }
  }
}

