Bacteria david = new Bacteria(400, 400, 0, 0, 0);
Food poop = new Food ();
boolean needMoreFood;
void setup()   
{  
  size (800, 800);
  //frameRate (100);
}   
void draw()   
{    
  //move and show the bacteria
  background (255);
  david.show();
  david.walk();
  poop.show ();
  if (mousePressed == true)
  {
    Food poop = new Food();
  }
  if (david.myX == poop.foodX && david.myY == poop.foodY)
  {
    needMoreFood = true;
  }
}
void mousePressed()
{
  poop.foodLocation ();
}
class Bacteria    
{     
  int myX, myY, mySize, myColorR, myColorB, myColorG;
  Bacteria(int x, int y, int colorZ, int colorX, int colorC) 
  {
    myX = x;
    myY = y;
    myColorR = colorZ;
    myColorG = colorX;
    myColorB = colorC;
    mySize = 20;
  }
  void show()
  {
    noFill();
    strokeWeight (2);
    stroke(myColorR, myColorG, myColorB);
    ellipse (myX, myY, mySize, mySize);
  }
  void walk()
  {
    if (myX > poop.foodX)
    {
      myX = myX + (int) (Math.random()*3)-2;
    } else
    {
      myX = myX + (int) (Math.random()*3);
    }
    if (myY > poop.foodY)
    {
      myY = myY + (int) (Math.random()*3)-2;
    } else 
    {
      myY = myY + (int) (Math.random()*3);
    }
  }
}  
class Food
{
  int foodX, foodY;
  Food ()
  {
    foodX = 100;
    foodY = 100;
  }
  void show ()
  {
    fill (0);
    ellipse (foodX, foodY, 10, 10);
    if (needMoreFood == true)
    {
      stroke(255);
      fill (255);
    }
  }
  void foodLocation ()
  {
    foodX = mouseX;
    foodY = mouseY;
  }
}
