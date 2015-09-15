Bacteria david = new Bacteria(400,400,0,0,0);
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
    mySize = 10;
  }
  void show()
  {
    noFill();
    stroke(myColorR, myColorG, myColorB);
    ellipse (myX, myY, mySize, mySize);
    myX = myX + (int) (Math.random ()*800)+1;
    myY = myY + (int) (Math.random ()*800)+1;
  }
  void walk()
  {
    myX = myX + (int) (Math.random ()*3)+1;
    myY = myY + (int) (Math.random ()*3)+1;
  }
}    
