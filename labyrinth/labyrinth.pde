import processing.sound.*;
import controlP5.*;
import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;
//import java.util.Collections;
//import java.util.ArrayList;
import java.util.*;

MySQL hsdb;
ControlP5 cp5;

String result = "";
int xK = 30;
int yK = 690;
int collisionIndex = 0;
color white = color(255, 255, 255);
color blue = color(0, 200, 255);
int circleSize = 35;
int rectTrue = 0;
int victorySquare[] = {1220, 0, 60};
boolean collision = false;
PImage victory;
PImage gameover;
int lives = 5;
PFont font;
String time = "45";
int t;
int interval = 45;
int points = 150;
int timer;
int pointsFinal;
boolean gameOver = false;
boolean start = true;
boolean textInputIndex = true;
String highscoreName;
String[] nam;
SoundFile collisionSound;
SoundFile victorySound;
SoundFile gameOverSound;
SoundFile backgroundMusic;

int rects[][] = {
  {0, 660, 720, 60}, 
  {660, 300, 60, 470}, 
  {330, 450, 390, 60}, 
  {500, 150, 60, 360}, 
  {250, 50, 60, 260}, 
  {50, 250, 500, 60}, 
  {250, 50, 600, 60}, 
  {790, 50, 60, 460}, 
  {790, 450, 450, 60}, 
  {950, 60, 60, 470}, 
  {950, 60, 330, 60}, 
  {150, 380, 60, 490}, 
  {950, 450, 60, 200}, 
  {750, 590, 260, 60}, 
  {1220, 0, 60, 120}
};



void setup() {
  size(1280, 720);
  mouseX = 30;
  mouseY = 690;
  victory = loadImage("victory.jpg");
  gameover = loadImage("gameover.jpg");
  collisionSound = new SoundFile(this, "collision.mp3");
  victorySound = new SoundFile(this, "victory.mp3");
  gameOverSound = new SoundFile(this, "gameover.mp3");
  PFont font = createFont("arial", 15);
  cp5 = new ControlP5(this);
  //cp5.addTextfield("Name").setPosition(30, 160).setSize(180, 60).setAutoClear(false).setFont(font);
  
  //nam = loadStrings("Data/playerName.txt");
  
  
  initSQL();
}


void mouseDragged() {
  if (isMouseOverCircle() == true) {
    xK = mouseX;
    yK = mouseY;
  }
}
//void keyPressed(){
//    highscoreName = cp5.get(Textfield.class, "Name").getText();
//}

void draw() {
  if (start == true) {

    fill(0, 102, 153); 
    background(0, 0, 0);
    stroke(255, 255, 255);
    fill(255, 255, 255);
    t = interval-int(millis()/1000);
    time = nf(t, 3);

    if (millis() - timer > 1000) {
      points -= 2;
      timer = millis();
    }
    textSize(20);
    text("Time left:", 15, 120);
    text(time, 15, 140);


    for (int i = 0; i < rects.length; i++) { 
      int rect[] = rects[i];
      rect(rect[0], rect[1], rect[2], rect[3]);
    }

    stroke(0, 200, 255);
    fill(0, 200, 255);
    square(victorySquare[0], victorySquare[1], victorySquare[2]);

    for (int i = 0; i < rects.length; i++) { 
      if (isBallInLab(rects[i]) == true) {
        collision = false;
        //text("TRUE", 15, 30);
        collisionIndex++;
      }
    }
    if (collisionIndex == 0) {
      //text("FALSE", 15, 30);
      collisionSound.play();
      circleSize -= 5;
      lives -= 1;
      points -= 10;
      delay(120);
    }



    stroke(255, 0, 0);
    fill(255, 0, 0);
    circle(xK, yK, circleSize);

    textSize(30);
    text("Lives: " + lives, 15, 60);

    // VICTORY
    collisionIndex = 0;
    if (isBallInSquare(victorySquare) == true) {
      pointsFinal = points;
      if (textInputIndex == true) {
        
        victorySound.play();
        
        storehsSQL();
        getHighscoreSQL();    
        
        stop();
        background(0, 0, 0);
        image(victory, 0, 0);
        textSize(40);
        text("Points: " + pointsFinal, 540, 500);
        text("Highscore: "+HighscoreInfo, 540, 540);
      }
    }
  }

  if (lives == 0 || time.equals("000")) {
    image(gameover, 0, 0);
    gameOverSound.play();
    stop();
  }
}
