Bacteria david = new Bacteria(400, 400, 0, 0, 0);
Food poop = new Food (mouseX, mouseY);
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
  //if (mousePressed == true)
  //{
    //Food poop = new Food();
  //}
  if (david.myX == poop.foodX && david.myY == poop.foodY)
    {
      poop.beenEaten = true;
    }
}
void mousePressed()
{
  Food poop = new Food (mouseX, mouseY);
  poop.show();
  poop.foodLocation();
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
        myX = myX + (int) (Math.random()*3)-2;
      } else
      {
        myX = myX + (int)(Math.random()*3);
      }
      if (myY > poop.foodY)
      {
        myY = myY + (int)(Math.random()*3)-2;
      } else 
      {
        myY = myY + (int)(Math.random()*3);
      }
    } else 
    {
      choice = (int)(Math.random()*4);
      if (choice == 0)
        myX = myX + 2;
      if (choice == 1)
        myY = myY + 2;
      if (choice == 2)
        myX = myX -2;
      if (choice == 3)
        myY = myY -2;
    }
  }
}  

class Food
{
  int foodX, foodY, rgb;
  boolean beenEaten;
  Food (int fX, int fY)
  {
    foodX = fX;
    foodY = fY;
    beenEaten = false;
    rgb = 0;
  }
  void show ()
  {
    if (beenEaten == true)
    { 
     foodX = 900;
     foodY = 900;
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
