int total = 0;
void setup() 
{
  size (730, 730);
  background(#FFFFFF);
  noLoop();
}

void draw () 
{
      total= 0;
      fill(265,265,265);
      stroke(0);
      strokeWeight(2);
      rect(275, 675, 186, 43, 5);
  for (int y = 10; y <= 620; y+= 55) {
    for (int x = 10; x<= 670; x += 55) {
     Die bob = new Die(x,y);
     bob.show();
    }
  }
    textSize(40);
    fill(0);
  text("Total: " + total, 285, 710);
}
void mousePressed() {
  redraw();
}
   
   class Die 
  {
    int numDots, myX, myY; 
    Die(int x, int y)
    {
      numDots = (int)(Math.random() * 6) + 1;
      myX = x;
      myY = y;
    }

    void show() {
      fill (#FFFFFF);
      stroke(0);
      strokeWeight(2);
      rect(myX, myY, 50, 50, 5);
      fill (0);


      if (numDots == 1) {
        fill(#FFB4B4);
        ellipse (myX+25, myY+25, 10, 10);
        total = total + 1;
      } else if (numDots == 2) 
      {
        fill(#C4E09E);
        //top dot
        ellipse (myX+10, myY+10, 10, 10);
        //bottom 
        ellipse (myX+40, myY+40, 10, 10);
        total = total + 2;
      } else if (numDots == 3)
      {
        fill(#FFCD03);
        //top
        ellipse (myX+10, myY+10, 10, 10); 
        //bottom
        ellipse (myX+40, myY+40, 10, 10);
        //middle
        ellipse(myX+25, myY+25, 10, 10);
        total = total + 3;
      } else if (numDots == 4) 
      {
        fill(#D6C7E8);
        ellipse (myX+10, myY+10, 10, 10); //top left
        ellipse (myX+40, myY+10, 10, 10);//top right
        ellipse (myX+10, myY+40, 10, 10);//bottom left
        ellipse (myX+40, myY+40, 10, 10); //bottom right
        total = total + 4;

      } else if (numDots == 5)
      {
        fill(#B4C9FF);
        ellipse (myX+10, myY+10, 9, 9); //top left
        ellipse (myX+40, myY+10, 9, 9);//top right
        ellipse (myX+10, myY+40, 9, 9);//bottom left
        ellipse (myX+40, myY+40, 9, 9); //bottom right
        ellipse(myX + 25, myY+25, 9, 9);//middle
        total = total + 5;

      } else 
      {
        fill(#E8C7DC);
        ellipse (myX+12, myY+12, 9, 9); //top left
        ellipse (myX+12, myY+26, 9, 9);//left middle
        ellipse (myX+12, myY+42, 9, 9);//bottom left
        ellipse (myX+38, myY+12, 9, 9);//top right
        ellipse (myX+38, myY+26, 9, 9);//right middle
        ellipse (myX+38, myY+42, 9, 9); //bottom right
        total = total + 6;

      }
    }
  }
