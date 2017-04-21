float ballX = 20;
float ballY = 20;
float dX = (random(1, 2))*4;
float dY = (random(1, 2))*4;
float paddleX;
float paddleY = 10;
float paddleH = 100;
PFont font;
int score=10;
int colors = 100;

void setup()
{
size(800,525);
background(0);
paddleX = width- 25;
}

void draw()
{
textFont(loadFont("ACaslonPro-Bold-20.vlw"));
background(0);
noStroke();
//Paddle
fill(colors);
rect(paddleX,paddleY,25,paddleH);
//Dotted Vertical Line
rect(387.5,0,25,25);
rect(387.5,50,25,25);
rect(387.5,100,25,25);
rect(387.5,150,25,25);
rect(387.5,200,25,25);
rect(387.5,250,25,25);
rect(387.5,300,25,25);
rect(387.5,350,25,25);
rect(387.5,400,25,25);
rect(387.5,450,25,25);
rect(387.5,500,25,25);
rect(387.5,550,25,25);
//Colors
 if(keyPressed && (key == 'g'))
 {
   colors = #19CE41;
 }
 if(keyPressed && (key == 'b'))
 {
   colors = #193ECE;
 }
//Ball Mechanics
fill(#FFFFFF);
if(score == 10)
{
  text("Score :: 10", 120, 20);
}
if(score == 9)
{
  text("Score :: 9", 120, 20);
}
if(score == 8)
{
  text("Score :: 8", 120, 20);
}
if(score == 7)
{
  text("Score :: 7", 120, 20);
}
if(score == 6)
{
  text("Score :: 6", 120, 20);
}
if(score == 5)
{
  text("Score :: 5", 120, 20);
}
if(score == 4)
{
  text("Score :: 4", 120, 20);
}
if(score == 3)
{
  text("Score :: 3", 120, 20);
}
if(score == 2)
{
  text("Score :: 2", 120, 20);
}
if(score == 1)
{
  text("Score :: 1", 120, 20);
}
if(score < 1)
{
text("You lost all 10 points, you lose..Game Over", 20, 20);
noLoop();
}


if(ballX > width)
{
ballX = 0;
ballY = 0;
score -= 1;
}



ellipse(ballX, ballY,25,25);
//Bouncing
if((ballX > paddleX) && (ballY >= paddleY) && (ballY <= paddleY + paddleH))
{
dX = -dX;
}
if(ballX < 0)
{
dX = -dX;
}
if(ballY > height)
{
dY = -dY;
}
if(ballY <0)
{
dY = -dY;
}

ballX = ballX+dX;
ballY = ballY +dY;

text("Time :: " + (millis()/1000) + " s", 450, 20);

}


void keyPressed()
{
if(key == CODED)
  {
    if(keyCode == UP)
    {
      paddleY = paddleY-paddleH;    
    }
    else if(keyCode == DOWN)
    {
      paddleY = paddleY + paddleH;
    }
  }
}