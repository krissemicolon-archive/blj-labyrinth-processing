PGraphics circle;
PGraphics background;

void setup() {
  size(1280, 720);
  circle = createGraphics(1280, 720);
  background = createGraphics(1280, 720);
  background.beginDraw();
  background.stroke(0, 200, 255);
  background.fill(0, 200, 255);
  background.square(0, 660, 60);
  background.square(1220, 0, 60);


  //labirynth
  background.stroke(255, 255, 255);
  background.fill(255, 255, 255);
  background.rect(60, 660, 600, 60);
  background.rect(660, 300, 60, 500);
  background.rect(330, 450, 330, 60);
  background.rect(500, 150, 60, 300);
  background.rect(250, 250, 250, 60);
  background.rect(250, 50, 60, 200);
  background.rect(50, 250, 500, 60);
  background.rect(250, 50, 600, 60);
  background.rect(790, 50, 60, 400);
  background.rect(790, 450, 450, 60);
  background.rect(950, 60, 60, 410);
  background.rect(950, 60, 330, 60);
  background.rect(150, 380, 60, 460);
  background.rect(950, 450, 60, 200);
  background.rect(750, 590, 200, 60);
  background.endDraw();
  image(background, 1280, 720);
}

void draw() {
  circle.beginDraw();
  circle.stroke(255, 0, 0);
  circle.fill(255, 0, 0);
  circle.circle(mouseX, mouseY, 40);
  circle.endDraw();
  image(circle, 0, 0);   
}
