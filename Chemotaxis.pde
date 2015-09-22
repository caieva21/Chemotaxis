Bacteria []david;
Food poop = new Food();
int i = 0;
void setup()   
{  
  size (800, 800);
  david = new Bacteria [500];
  for (int i = 1; i<=500; i++)
  {
    Bacteria david[i] = new Bacteria;
  }
}   
void draw()   
{    
  background (255);
  david[i].show();
  david[i].walk();
  poop.show();
  if (david[i].myX == poop.foodX && david[i].myY == poop.foodY)
  {
    poop.foodLocation ();
    david[i].mySize = david[i].mySize + 10;
  }
  if (i<500 && i>0 && david[i].mySize == 40)
  {
    Bacteria david[i] = new Bacteria;
  }
}
class Bacteria    
{     
  int myX, myY, mySize, myColor1, myColor2, myColor3, choice;
  Bacteria(int x, int y) 
  {
    myX = x;
    myY = y;
    myColor1= (int)(Math.random()*800);
    myColor2= (int)(Math.random()*800);
    myColor3= (int)(Math.random()*800);
    mySize = 20;
  }
  void show()
  {
    noFill();
    strokeWeight (2);
    stroke(myColor1, myColor2, myColor3);
    ellipse (myX, myY, mySize, mySize);
  }
  void walk()
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
  }
}  

class Food
{
  int foodX, foodY;
  Food ()
  {
    foodX = (int)(Math.random()*800);
    foodY = (int)(Math.random()*800);
  }
  void show ()
  {
    fill (0);
    stroke (0);
    ellipse (foodX, foodY, 10, 10);
  }
  void foodLocation ()
  {

    foodX =(int)(Math.random()*800);
    foodY = (int)(Math.random()*800);
  }
}
