Bacteria david = new Bacteria(400, 400, 0, 0, 0);
Food poop = new Food ();
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
  poop.show();
  if (mousePressed == true)
  {
    Food poop = new Food();
  }
  if (david.myX == poop.foodX && david.myY == poop.foodY)
    {
      poop.beenEaten = true;
      Food poop = new Food ();
    }
}
void mousePressed()
{
  poop.foodLocation ();
}
class Bacteria    
{     
  int myX, myY, mySize, myColorR, myColorB, myColorG, choice;
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
    if (poop.beenEaten == false)
    {
      if (myX > poop.foodX)
      {
        myX = myX -1;
      } else
      {
        myX = myX + 1;
      }
      if (myY > poop.foodY)
      {
        myY = myY -1;
      } else 
      {
        myY = myY + 1;
      }
    } else 
    {
      choice = (int)(Math.random()*4);
      if (choice == 0)
        myX = myX + 5;
      if (choice == 1)
        myY = myY + 5;
      if (choice == 2)
        myX = myX -5;
      if (choice == 3)
        myY = myY -5;
    }
  }
}  

class Food
{
  int foodX, foodY, rgb;
  boolean beenEaten;
  Food ()
  {
    foodX = 100;
    foodY = 100;
    beenEaten = false;
    rgb = 0;
  }
  void show ()
  {
    if (beenEaten == true)
    { 
      noStroke();
      poop.rgb = 255;
    } else
    {
      stroke (0);
      poop.rgb = 0;
    }
    fill (rgb);
    ellipse (foodX, foodY, 10, 10);
    
  }
  void foodLocation ()
  {

    foodX = mouseX;
    foodY = mouseY;
  }
}
