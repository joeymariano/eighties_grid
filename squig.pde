class Squig {
  float size;
  color colr;
  float rot;
  float speed;
  float thick;
  
  Squig(color tempColr, float tempSize, float tempThick){
    colr = tempColr;
    speed = .1;
    size = tempSize;
    thick = tempThick;
  }
  
  void update(){
    pg2.pushMatrix();
    
    pg2.translate(pg.width/1.5, pg.height/1.5, 0);
    pg2.rotateZ(-rot);
    pg2.rotateY(rot/-6);
    pg2.stroke(colr);
    pg2.strokeWeight(thick);
    pg2.noFill();
    pg2.ellipseMode(CENTER);
    pg2.arc(-size, 0, size*2, size*2, 0, PI, 0);
    pg2.arc(size, 1, size*2, size*2, -PI, 0, 0);
    pg2.noStroke();
    
    rot = rot - speed;
    pg2.popMatrix();
  } 
}
