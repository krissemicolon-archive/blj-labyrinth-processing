boolean isBallInLab(int rectCollision[]) {


  if ( xK - circleSize / 2 > rectCollision[0] 
    && xK + circleSize / 2 < rectCollision[0] + rectCollision[2] 
    && yK - circleSize / 2 > rectCollision[1] 
    && yK + circleSize / 2 < rectCollision[1] + rectCollision[3] 
    ) {

    return true;
  } else {
    return false;
  }
}
boolean isBallInSquare(int victorySquare[]) {


  if ( xK - circleSize / 2 > victorySquare[0] 
    && xK + circleSize / 2 < victorySquare[0] + victorySquare[2] 
    && yK - circleSize / 2 > victorySquare[1] 
    && yK + circleSize / 2 < victorySquare[1] + victorySquare[2] 
    ) {

    return true;
  } else {
    return false;
  }
}

boolean isMouseOverCircle() {


  if (    
    mouseX < xK + circleSize /2 && mouseX > xK - circleSize
    ) {
    return true;
  } else {
    return false;
  }
}
