boolean start = false;
int x = 30;
int y = 690;
int circleSize = 40;
color white = color(255, 255, 255);


 
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
  square(0, 660, 60);
  square(1220, 0, 60);
    
  //labirynth
  stroke(255, 255, 255);
  fill(255, 255, 255);
  rect(60, 660, 600, 60);
  rect(660, 300, 60, 500);
  rect(330, 450, 330, 60);
  rect(500, 150, 60, 300);
  rect(250, 250, 250, 60);
  rect(250, 50, 60, 200);
  rect(50, 250, 500, 60);
  rect(250, 50, 600, 60);
  rect(790, 50, 60, 400);
  rect(790, 450, 450, 60);
  rect(950, 60, 60, 410);
  rect(950, 60, 330, 60);
  rect(150, 380, 60, 460);
  rect(950, 450, 60, 200);
  rect(750, 590, 200, 60);
  
  
    stroke(255, 0, 0);
    fill(255, 0, 0);
    circle(x, y, circleSize);
    loadPixels();
    if (pixels[x + y * circleSize] == color(0, 0, 0) || pixels[x + y * circleSize] == color(0, 0, 255)) {
      println("true");
    } else {
      println("false");
      circleSize -= 5;
    }
}
  
