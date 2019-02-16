class Torus{
  int pts; 
  float angle;
  float thickness;
  color clr;
  
  // lathe segments
  int segments;
  float latheAngle;
  float latheRadius;
  
  //vertices
  PVector vertices[], vertices2[];

  Torus(float tempThickness, float tempLatheRadius){
    pts = 40; 
    thickness = tempThickness;
    
    // lathe segments
    segments = 120;
    latheAngle = 0;
    latheRadius = tempLatheRadius;
    
    // initialize point arrays
    vertices = new PVector[pts+1];
    vertices2 = new PVector[pts+1];
    
    // fill arrays vertices[] and verticies2[]
    for(int i=0; i<=pts; i++){
      vertices[i] = new PVector();
      vertices2[i] = new PVector();
      vertices[i].x = latheRadius + sin(radians(angle))*thickness;
      vertices[i].z = cos(radians(angle))*thickness;

      angle+=360.0/pts;
    }
  }
  
  void update(color clr ){
      pg2.pushMatrix();
      pg2.fill(clr);
      //center and spin toroid
      pg2.translate(pg2.width/1.2, pg2.height/2);
    
      pg2.rotateX(frameCount*PI/150);
      pg2.rotateY(frameCount*PI/170);
      pg2.rotateZ(frameCount*PI/90);
    
      // draw toroid
      latheAngle = 0;
      for(int i=0; i<=segments; i++){
        pg2.beginShape(QUAD_STRIP);
        for(int j=0; j<=pts; j++){
          if (i>0){
            pg2.vertex(vertices2[j].x, vertices2[j].y, vertices2[j].z);
          }
          vertices2[j].x = cos(radians(latheAngle))*vertices[j].x;
          vertices2[j].y = sin(radians(latheAngle))*vertices[j].x;
          vertices2[j].z = vertices[j].z;
          pg2.vertex(vertices2[j].x, vertices2[j].y, vertices2[j].z);
        }

        latheAngle+=360.0/segments;
        pg2.endShape();
      }
      pg2.popMatrix();
  }
  
}
