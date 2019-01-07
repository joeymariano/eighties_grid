class Grid {
  
  float gridSpace;
  float gridStroke = 0;
  boolean gridGrow = false;
  
  int upperLeftX = -displayWidth;
  int upperLeftY = -displayHeight;
  
  float spin;
 
  void update(color st, float space, float lineDepth){
    pushMatrix();
    
    spin += .2;
    translate(displayWidth/2, displayHeight/2, 0);
    rotate(radians(spin));

    stroke(st);
    gridSpace = space;
    strokeWeight(gridStroke);
    
    for (int i = upperLeftX; i < displayWidth; i += gridSpace){
         line(i, upperLeftY, lineDepth, i, displayHeight, lineDepth);
         for(int x = upperLeftY; x < displayHeight; x += gridSpace) {
           line(upperLeftX, i, lineDepth, displayWidth, i, lineDepth);
         }
    }
    
    if (gridGrow == true){
      gridStroke += .5;
    } else {
      gridStroke -= .5;
    }
    
    if (gridStroke >= gridSpace/2.5){
      gridGrow = false;
    }
    if (gridStroke <= 4){
       gridGrow = true;
    }
    
    popMatrix();
  }
  
}
