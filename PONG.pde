int x = 205;
int xspeed = 4;
int y = 15;
int yspeed = 4;
int score = 0;
boolean gameOver = false; 

  void setup (){  
  size(400,400);  
}

void draw(){  
  background(5,5,5);
  if (!gameOver){
  ellipse(x,y,20,20);
  rect(10,mouseY,10,50);
  fill(255,255,255);
  stroke(131,131,131);
  x += xspeed;
  y += yspeed;
  fill(255,255,255);
textSize(16);
text("Score: " + score, 20, 20);
  if(x >= width) {
   xspeed = -xspeed;
  }
  if (intersects(x,y,10,mouseY,50)) {
    score ++;
    xspeed= -xspeed;
  }
  if (y >= height){ 
   yspeed = -yspeed; 
  }
    if (y <= 0){
   yspeed = -yspeed; 
  }
  }  
   if (x < 0) {
   gameOver = true;
   textSize(16);
   text("Game Over", 180,200);
   if (mousePressed)
     System.exit(0); 
  }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballY < paddleY + paddleLength && ballX < paddleX)
return true;
else 
return false;

}
