raindrops[] drop = new raindrops[500];
catchers catcher;
timers timer;
boolean full = false;
int dropNum = 0;
int d;

void setup()
{
  size(500, 500);
  d = 50;
  for (int i = 0; i < drop.length; i++)
  {
    drop[i] = new raindrops();
  }
  catcher = new catchers();
  timer = new timers();
}

void draw()
{
  background(0);
  //RAINDROPS
  //creating raindrops
  if (timer.count())
  {
    drop[dropNum] = new raindrops();
    dropNum++;
    if (dropNum >= drop.length)
    {
      dropNum = 0;
      full = true;
    }
  }
  if (!full)
  {
    for (int i = 0; i < dropNum+1; i++)
    {
      drop[i].show();
      drop[i].fall();
      //catching the raindrops
      if (dist(drop[i].loc.x, drop[i].loc.y, catcher.loc.x, catcher.loc.y) <= d/2) {
        drop[i].loc.y = height;
      }
    }
  }
  //prevent it from blanking every time dropNum resets
  if (full)
  {
    for (int i = 0; i < drop.length; i++)
    {
      drop[i].show();
      drop[i].fall();
      if (dist(drop[i].loc.x, drop[i].loc.y, catcher.loc.x, catcher.loc.y) <= 50) {
        drop[i].loc.y = height;
      }
    }
  }
  //catcher
  catcher.show();
}







