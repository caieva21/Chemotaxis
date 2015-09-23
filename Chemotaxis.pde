Bacteria []david;
Food poop = new Food();
int i = 1;
void setup()   
{  
  size (800, 800);
  david = new Bacteria [500];
  for (int i = 0; i<=499; i++)
  {
    david[i] = new Bacteria();
  }
}   
void draw()   
{    
  background (255);
  poop.show();
  for (int k = 0; k< i; k++)
  {
    david[i].show();
    david[i].walk();
    if (david[i].myX == poop.foodX && david[i].myY == poop.foodY)
    {
      poop.foodLocation ();
      david[i].mySize = david[i].mySize + 10;

      if (david[i].mySize == 40) 
      {
        david[i] = new Bacteria();
        david[i].mySize = 20;
        i++;
      }
    }
  }
}
class Bacteria    
{     
  int myX, myY, mySize, myColor1, myColor2, myColor3, choice;
  Bacteria() 
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myColor1= (int)(Math.random()*255);
    myColor2= (int)(Math.random()*255);
    myColor3= (int)(Math.random()*255);
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
