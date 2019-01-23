class Cylinder {
  float radius;
  float ang;
  float ang2;
  float depth;
  color colr;
  
  Cylinder(color tempColr, float tempRadius, float tempDepth){
    colr = tempColr;
    radius = tempRadius;
    depth = tempDepth;
  }
  
  void update(){
    pg2.pushMatrix();
    pg2.fill(colr);
     pg2.translate(pg2.width/2, pg2.height/2, -200);
     pg2.rotateY(ang2);
     pg2.rotateX(ang2*2);
     pg2.rotateZ(ang2);  // don't think this is doing anything
     
     //body
     pg2.beginShape(QUAD_STRIP);
       for (int i=0; i<=120; i++){
         float  px = cos(radians(ang))*radius;
         float  py = sin(radians(ang))*radius;
         pg2.vertex(px, py, depth); 
         pg2.vertex(px, py, -depth); 
         ang+=360/120;
       }
     pg2.endShape(); 
     
     //c ap 1
     pg2.beginShape(POLYGON);
       for (int i=0; i<=120; i++){
         float  px = cos(radians(ang))*radius;
         float  py = sin(radians(ang))*radius;
         pg2.vertex(px, py, depth); 
         ang+=360/120;
       }
     pg2.endShape(); 
    
     //cap2
     pg2.beginShape(POLYGON);
       for (int i=0; i<=120; i++){
         float  px = cos(radians(ang))*radius;
         float  py = sin(radians(ang))*radius;
         pg2.vertex(px, py, -depth); 
         ang+=360/120;
       }
     pg2.endShape(); 
     
     pg2.popMatrix();
     ang2+=PI/120; //for rotation 
  }
  
  
}
