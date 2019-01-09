class Grid {
  
  float gridSpace;
  float gridStroke = 0;
  boolean gridGrow = false;
  
  int upperLeftX = -displayWidth;
  int upperLeftY = -displayHeight;
  
  float spin;
 
  void update(color st, float space, float lineDepth){
    pg.pushMatrix();
    
    spin += .2;
    pg.translate(pg.width/2, pg.height/2, 0);
    pg.rotate(radians(spin));

    pg.stroke(st);
    gridSpace = space;
    pg.strokeWeight(gridStroke);
    
    for (int i = upperLeftX; i < pg.width; i += gridSpace){
         pg.line(i, upperLeftY, lineDepth, i, pg.height, lineDepth);
         for(int x = upperLeftY; x < pg.height; x += gridSpace) {
           pg.line(upperLeftX, i, lineDepth, pg.width, i, lineDepth);
         }
    }
    
     pg.popMatrix();
    
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
  }
  
}
