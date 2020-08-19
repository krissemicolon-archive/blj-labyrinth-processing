PGraphics circle;
PGraphics labyrinth;

void setup() {
  size(1280, 720);
  circle = createGraphics(1280, 720);
  labyrinth = createGraphics(1280, 720);
  labyrinth.beginDraw();
  labyrinth.stroke(0, 200, 255);
  labyrinth.fill(0, 200, 255);
  labyrinth.square(0, 660, 60);
  labyrinth.square(1220, 0, 60);


  //labirynth
  labyrinth.stroke(255, 255, 255);
  labyrinth.fill(255, 255, 255);
  labyrinth.rect(60, 660, 600, 60);
  labyrinth.rect(660, 300, 60, 500);
  labyrinth.rect(330, 450, 330, 60);
  labyrinth.rect(500, 150, 60, 300);
  labyrinth.rect(250, 250, 250, 60);
  labyrinth.rect(250, 50, 60, 200);
  labyrinth.rect(50, 250, 500, 60);
  labyrinth.rect(250, 50, 600, 60);
  labyrinth.rect(790, 50, 60, 400);
  labyrinth.rect(790, 450, 450, 60);
  labyrinth.rect(950, 60, 60, 410);
  labyrinth.rect(950, 60, 330, 60);
  labyrinth.rect(150, 380, 60, 460);
  labyrinth.rect(950, 450, 60, 200);
  labyrinth.rect(750, 590, 200, 60);
  labyrinth.endDraw();
  image(labyrinth, 1280, 720);
}

void draw() {
  circle.beginDraw();
  circle.stroke(255, 0, 0);
  circle.fill(255, 0, 0);
  circle.circle(mouseX, mouseY, 40);
  circle.endDraw();
  image(circle, 0, 0);   
}
