class BendyPipe{
  int pts; 
  float angle;
  float radius;
  
  // lathe segments
  int segments;
  float latheAngle;
  float latheRadius;
  
  //vertices
  PVector vertices[], vertices2[];
  
  // for shaded or wireframe rendering 
  boolean isWireFrame = false;
  
  // for optional helix
  boolean isHelix;
  float helixOffset;

  BendyPipe(){
    pts = 40; 
    angle = 0;
    radius = 15.0;
    
    // lathe segments
    segments = 60;
    latheAngle = 0;
    latheRadius = 50.0;
    
    // for shaded or wireframe rendering 
    isWireFrame = false;
    
    // for optional helix
    isHelix = false;
    helixOffset = 5.0;
  }
  
  void update(){
      pg2.pushMatrix();
      pg2.noStroke();
      pg2.fill(150, 195, 125);
      //center and spin toroid
      pg2.translate(width/2, height/2, -100);
    
      pg2.rotateX(frameCount*PI/150);
      pg2.rotateY(frameCount*PI/170);
      pg2.rotateZ(frameCount*PI/90);
    
      // initialize point arrays
      vertices = new PVector[pts+1];
      vertices2 = new PVector[pts+1];
    
      // fill arrays
      for(int i=0; i<=pts; i++){
        vertices[i] = new PVector();
        vertices2[i] = new PVector();
        vertices[i].x = latheRadius + sin(radians(angle))*radius;

        vertices[i].z = cos(radians(angle))*radius;

        angle+=360.0/pts;
      }
    
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
          // optional helix offset
          if (isHelix){
            vertices[j].z+=helixOffset;
          } 
          pg2.vertex(vertices2[j].x, vertices2[j].y, vertices2[j].z);
        }

        latheAngle+=360.0/segments;
        pg2.endShape();
      }
      pg2.popMatrix();
  }
  
}
