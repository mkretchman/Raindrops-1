ArrayList<raindrop> raindrops = new ArrayList<raindrop>();
catcher catcher1;

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  for (int i = 0; i < 20; i++) {
    raindrops.add(new raindrop());
  }
}

void draw() {
  background(0);
  if (frameCount%4 == 0) {
    raindrops.add(new raindrop());
  }
  for (int i = raindrops.size()-1; i >=0; i--) {
    raindrop b = raindrops.get(i);
    b.show();
    b.fall();
    if (b.loc.y > height + 100) {
      raindrops.remove(i);
    }
  }
  catcher1.show();
  if (
}
