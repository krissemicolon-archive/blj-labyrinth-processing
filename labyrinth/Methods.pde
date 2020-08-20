boolean istBallInLabyrinth(int rectCollision[]) {

  
 if (    x - circleSize / 2 > rectCollision[0] 
      && x + circleSize / 2 < rectCollision[0] + rectCollision[2] 
      && y - circleSize / 2 > rectCollision[1] 
      && y + circleSize / 2 < rectCollision[1] + rectCollision[3] 
      ) {
        
        return true;
  } 
  else {
    return false;
  } 

}
boolean istBallImQuadrat(int victorySquare[]) {

  
 if (    x - circleSize / 2 > victorySquare[0] 
      && x + circleSize / 2 < victorySquare[0] + victorySquare[2] 
      && y - circleSize / 2 > victorySquare[1] 
      && y + circleSize / 2 < victorySquare[1] + victorySquare[2] 
      ) {
        
        return true;
  } 
  else {
    return false;
  } 

}
