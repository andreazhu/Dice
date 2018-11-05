/** Dice Project
  * Self-rolling dice(25) 
  * Displays sum of the roll
  * @author Andrea Zhu
  * @date   2018-11-05
  */

Die d;
int p;
int sum;

void setup()
{
  size(420,400);
  frameRate(1);
}

void draw()
{
  sum = 0;
  background(255,255,255);
  for (int y = 40; y <= 300; y += 60)
  {
    for (int x = 60; x <= 300; x += 60)
    {
      d = new Die(x,y);
      d.roll();
    }
  }
  text("Sum of Roll:" + sum, 160,370);
  
}

void mousePressed()
{
  sum = 0;
  redraw();
}

class Die 
{
  int myX, myY;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
  }
  
  void roll()
  {
    p  = (int)(Math.random()*6 + 1);
    d.show();
    sum = sum + p;
  }

  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 7);
    fill(0);
    
    if (p == 1){
      ellipse(myX + 25, myY + 25, 10, 10);
    } 
    if (p >= 2){
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      if (p == 3){
        ellipse(myX + 25, myY + 25, 10, 10);
      }
      if (p >= 4){
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        if (p == 5){
          ellipse(myX + 25, myY + 25, 10, 10);
        }
        if (p == 6){
          ellipse(myX + 10, myY + 25, 10, 10);
          ellipse(myX + 40, myY + 25, 10, 10);
        }
      }
    }
  }
}
