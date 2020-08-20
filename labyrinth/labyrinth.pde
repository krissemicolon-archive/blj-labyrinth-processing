int x = 30;
int y = 690;
int xy = 0;
int rectIndex = 0;
int collisionIndex = 0;
color white = color(255, 255, 255);
color blue = color(0, 200, 255);
int circleSize = 40;
int rectTrue = 0;
int victorySquare[] = {1220, 0, 60};
boolean collision = false;
PImage victory;



int rects[][] = {
  {0, 660, 720, 60},
  {660, 300, 60, 500},
  {330, 450, 330, 60},
  {500, 150, 60, 300},
  {250, 250, 300, 60},
  {250, 50, 60, 200},
  {50, 250, 500, 60},
  {250, 50, 600, 60},
  {790, 50, 60, 400},
  {790, 450, 450, 60},
  {950, 60, 60, 410},
  {950, 60, 330, 60},
  {150, 380, 60, 460},
  {950, 450, 60, 200},
  {750, 590, 200, 60}
};
 
void setup() {
  size(1280, 720);
  mouseX = 30;
  mouseY = 690;
  victory = loadImage("victory.jpg");
}

void mouseDragged() {
  if (isMouseOverCircle() == true) {
  x = mouseX;
  y = mouseY;
  }
}

void draw() {
  
  fill(0, 102, 153); 
  background(0, 0, 0);
  stroke(0, 200, 255);
  fill(0, 200, 255);
  square(victorySquare[0], victorySquare[1], victorySquare[2]);
  stroke(255, 255, 255);
  fill(255, 255, 255);
    
    
  for (int i = 0; i < rects.length; i++) { 
    int rect[] = rects[i];
     rect(rect[0], rect[1], rect[2], rect[3]);
     
  }
  
  if (isBallInLab(rects[rectIndex]) == true) {
      collision = false;
      text("TRUE", 15, 30);
      collisionIndex++;
      text(collisionIndex, 15, 120);
  } 
  text(collisionIndex, 15, 130);
  
  if (collisionIndex == 0) {
    text(collisionIndex, 15, 140);
    text("FALSE", 15, 30);
  }
  collisionIndex = 0;
  if (isBallInSquare(victorySquare) == true) {
    stop();
    image(victory, 0, 0);
    
  }
  rectIndex++;
  if (rectIndex > 13) {
    rectIndex = 0;
    
  } 
  stroke(255, 0, 0);
  fill(255, 0, 0);
  circle(x, y, circleSize);
   
}
  
