Die d1;
int p;

void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
  d1 = new Die(150,150);
  background(255,255,255);
  d1.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
  }
  void roll()
  {
    p  = (int)(Math.random()*6 + 1);
  }

  void show()
  {
    //p  = (int)(Math.random()*6 + 1);
    p = 5;
    fill(255);
    rect(125, 125, 50, 50, 7);
    fill(0);
    if (p == 1){
    ellipse(150, 150, 10, 10);
    } 
    if (p >= 2){
    ellipse(135, 135, 10, 10);
    ellipse(165, 165, 10, 10);
    if (p == 3){
    ellipse(150, 150, 10, 10);
    }
    if (p >= 4){
    ellipse(165, 135, 10, 10);
    ellipse(135, 165, 10, 10);
    if (p == 5){
    ellipse(150, 150, 10, 10);
    }
    }
    }  else if (p == 6){
    ellipse(150, 150, 10, 10);
    }
  }
}
