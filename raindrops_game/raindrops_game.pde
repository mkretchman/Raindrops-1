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
}

void draw()
{
  background(0);
  if (full)
  {
    for (int i = 0; i < drop.length; i++)
    {
      drop[i].show();
      drop[i].fall();
    }
  }
  else
  {
    for (int i = 0; i < dropNum+1; i++)
    {
      drop[i].show();
      drop[i].fall();
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
}

