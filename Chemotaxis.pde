//declare bacteria variables here   
void setup()   
{  
  size (800, 800);
  background (255);

  //initialize bacteria variables here
}   
void draw()   
{    
  //move and show the bacteria
}  
class Bacteria    
{     
  int myX, myY, mySize;
  Bacteria(int x, int y) 
  {
    myX = x;
    myY = y;
    mySize = (int) (Math.random()*10)+1;
  }
  void show()
  {
    noFill();
    stroke();
  }
  void walk()
  {
    x = x + (int) (Math.random ()*3)-1;
    y = y + (int) (Math.random ()*3)-1;
  }
}    
