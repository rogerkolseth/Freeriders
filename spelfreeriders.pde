
//obsticles X position
int obs1X,obs2X, obs3X, obs4X, obs5X;

//movement speed of obsticles
int moveSpeed;

//player
float playerWidth, playerHeight, playerY, playerX;

boolean left, right, space; 

PImage img;
PImage bg;
PImage star;


void setup(){
 size(    500,700);
 
  obs1X = 400; 
  obs2X = 170; 
  obs3X = -150; 
  obs4X = 0; 
  obs5X = -350;

  moveSpeed = 1;
  
  playerWidth = 50;
  playerHeight = 50;
  playerY = width/2;
  playerX = 700;
  
  img = loadImage("flyingCow.png");
  bg = loadImage("background.png");
  star = loadImage("star.png");
}


void draw(){
background(bg);
obstacles();
player();
obstacleMove();
jump();
}




void obstacleMove(){
obs1X =obs1X + moveSpeed;
obs2X =obs2X + moveSpeed;
obs3X =obs3X + moveSpeed;
obs4X =obs4X + moveSpeed;
obs5X =obs5X + moveSpeed;
}


void obstacles()
{
 fill(255);
 rect(200, obs1X, 300, 20);
 rect(0, obs2X, 200,20);
 rect (300, obs3X, 200, 20);
 image(star, 200,obs4X, 100, 100);
 rect(0, obs5X, 300 ,20);
}


void player() {
fill(255);
image(img, playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
//rect(playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
}


void jump(){
  
if(space == true) {
 playerX = playerX - 12;
}
else if(playerX < 700 ) {
 playerX = playerX + 6;
}



if(left == true){
  playerY = playerY-6;
}

if(right == true){
  playerY = playerY +6;
}

}


void keyPressed() {
  if(keyCode == LEFT) {
    left = true;
  }
  
  if(keyCode == RIGHT) {
    right = true;
  }
  
  if(keyCode == ' ') {
    space = true;
  }
}



void keyReleased() {
    if(keyCode == LEFT) {
    left = false;
  }
  
  if(keyCode == RIGHT) {
    right = false;
  }
  
  if(keyCode == ' ') {
    space = false;
  }
}