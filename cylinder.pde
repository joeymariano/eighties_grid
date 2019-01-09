class Cylinder {
  
  float radius = 100;
  float ang = 0, ang2 = 0;
  int pts = 120;
  float depth = 200;
  
  void update(){
    pg2.pushMatrix();
    pg2.directionalLight(255, 255, 255, -1, 0, -3);
    pg2.fill(blue);
     pg2.translate(width/2, height/2, -200);
     pg2.rotateY(ang2);
     pg2.rotateX(ang2*2);
     pg2.rotateZ(ang2);
     
     //body
     pg2.beginShape(QUAD_STRIP); 
     for (int i=0; i<=pts; i++){
       float  px = cos(radians(ang))*radius;
       float  py = sin(radians(ang))*radius;
       pg2.vertex(px, py, depth); 
       pg2.vertex(px, py, -depth); 
       ang+=360/pts;
     }
     pg2.endShape(); 
     
     //cap 1
     pg2.beginShape(POLYGON); 
     for (int i=0; i<=pts; i++){
       float  px = cos(radians(ang))*radius;
       float  py = sin(radians(ang))*radius;
       pg2.vertex(px, py, depth); 
       ang+=360/pts;
     }
     pg2.endShape(); 
    
     //cap2
     pg2.beginShape(POLYGON); 
     for (int i=0; i<=pts; i++){
       float  px = cos(radians(ang))*radius;
       float  py = sin(radians(ang))*radius;
       pg2.vertex(px, py, -depth); 
       ang+=360/pts;
     }
     pg2.endShape(); 
     pg2.popMatrix();
     ang2+=PI/120; //for rotation 
  }
  
  
}
