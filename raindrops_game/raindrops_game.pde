raindrops[] drop = new raindrops[500];
catchers catcher;
timers timer;
boolean full = false;
int dropNum = 0;

void setup()
{
  size(500, 500);
  timer = new timers();
  for (int i = 0; i < drop.length; i++)
  {
    drop[i] = new raindrops();
  }
  catcher = new catchers();
}

void draw()
{
  background(0);
  //raindrops
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
  else
  {
    for (int i = 0; i < dropNum+1; i++)
    {
      drop[i].show();
      drop[i].fall();
      if (dist(drop[i].loc.x, drop[i].loc.y, catcher.loc.x, catcher.loc.y) <= 50) {
        drop[i].loc.y = height;
      }
    }
  }
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
  //catcher
  catcher.show();
  
}









