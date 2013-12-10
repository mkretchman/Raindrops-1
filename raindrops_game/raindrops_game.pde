raindrops[] drop = new raindrops[500];
catchers catcher;
timers timer;
boolean full = false;
int dropNum;
int d;
int score;
int start;
void setup()
{
  start=0;
  size(500, 500);
  d = 50;
  for (int i = 0; i < drop.length; i++)
  {
    drop[i] = new raindrops();
  }
  catcher = new catchers();
  timer = new timers();
  textSize(30);
}

void draw()
{
  if (start>0) {
    fill(255);
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
      //only letting dropNum number of raindrops fall
      for (int i = 0; i < dropNum+1; i++)
      {
        drop[i].show();
        drop[i].fall();
        //catching the raindrops
        if (dist(drop[i].loc.x, drop[i].loc.y, catcher.loc.x, catcher.loc.y) <= d/2)
        {
          drop[i].loc.x = -100;
          score++;
        }
        if (drop[i].loc.y >= height + 20 && drop[i].loc.x >= 0)
        {
          drop[i].loc.y = height + 10;
          drop[i].vel.y = 0;
          drop[i].acc.y = 0;
          score--;
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
        //catching the raindrops
        if (dist(drop[i].loc.x, drop[i].loc.y, catcher.loc.x, catcher.loc.y) <= d/2)
        {
          drop[i].loc.x = -100;
          score++;
        }
        //decreasing the score
        if (drop[i].loc.y == height)
        {
          score--;
        }
      }
    }
    //catcher
    catcher.show();
    //displaying the score
    text(score, 30, 55);
  }
  if (start<=0) {
    textAlign(CENTER);
    background(255);
    fill(255,0,0);
    textSize(40);
    text("GAME TITLE", 250, 100);
    textSize(20);
    text("Click to start", 250, 200);
  }
}

void mousePressed() {
  start++;
}





