void setup()
{
size(1000,1000);
}

int x=500;
int y=175;
int colors=100;


void draw()
{
     background(204);
     fill(colors);
     ellipse(x,y,150,150);
     beginShape();
     fill(10);
     vertex(x-50,y+75);
     vertex(x+50,y+75);
     vertex(x+150,y+375);
     vertex(x-150,y+375);
     vertex(x-50,y+75);
     endShape();
     fill(50);
     rect(x-75,y+375,50,150);
     rect(x+25,y+375,50,150);
     
     float xmax = map(mouseX, 0, width, 450, 525);
     float ymax = map(mouseY, 0, width, 125, 200);

 if(keyPressed && (key == CODED))
 {
 if(keyCode == LEFT)
  {
     x-=10;
  }
  if(keyCode == RIGHT)
  {
     x+=10;
  }
  if(keyCode == UP)
  {
     y-=10;
  }
  if(keyCode == DOWN)
  {
     y+=10;
  }
 }
 if(keyPressed && (key == 'g'))
 {
   colors = #19CE41;
 }
 if(keyPressed && (key == 'b'))
 {
   colors = #193ECE;
 }
 ellipse(xmax, ymax, 9, 9);
 ellipse(xmax+25, ymax, 9, 9);
}