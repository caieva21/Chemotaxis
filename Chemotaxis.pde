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
  if (mousePressed == true)
  {
    Food ooo = new Food();
    ooo.show();
  }
}
void mousePressed()
{
poop.newLocation ();
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
    myX = myX + (int) (Math.random ()*3)-1;
    myY = myY + (int) (Math.random ()*3)-1;
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
    fill (255);
    ellipse (foodX, foodY, 10, 10);
  }
  void foodLocation
  {
  foodX = mouseX;
  foodY = mouseY;
  }
}

