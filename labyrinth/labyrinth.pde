boolean start = false;
int x = 30;
int y = 690;
int circleSize = 40;
  int rects[][] = {
    {0, 660, 660, 60},
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

}

void mouseDragged() {
  x = mouseX;
  y = mouseY;
 
}

void draw() {
  
  background(0, 0, 0);
  stroke(0, 200, 255);
  fill(0, 200, 255);
  square(1220, 0, 60);
  stroke(255, 255, 255);
  fill(255, 255, 255);
    
  
   
    int i = 0;
    int rect[] = rects[i];
  for (i = 0; i < rects.length; i++) {
    rect(rect[0], rect[1], rect[2], rect[3]);
     
  }
    i = 0;
   if (x - circleSize / 2 >= rect[0] && x + circleSize / 2 <= rect[0] + rect[1] && y - circleSize / 2 >= rect[1] && y + circleSize / 2 <= rect[1] + rect[3] && y + circleSize / 2 <= rect[1] + rect[2]) {
      println("true");
  } else {
      println("false");
  }
  
    stroke(255, 0, 0);
    fill(255, 0, 0);
    circle(x, y, circleSize);
     

}
  
