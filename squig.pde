class Squig {
  float x;
  float y;
  color colr;
  float rot;
  float speed;
  
  Squig(color tempColr){
    x = 40;
    y = 40;
    colr = tempColr;
    speed = .1;
  }
  
  void update(){
    pg2.pushMatrix();
    
    pg2.translate(pg.width/1.2, pg.height/1.2, 0);
    pg2.rotateZ(rot);
    pg2.stroke(colr);
    pg2.strokeWeight(10);
    pg2.noFill();
    pg2.ellipseMode(CENTER);
    pg2.arc(-25, 0, 50, 50, 0, PI);
    pg2.arc(25, 1, 50, 50, -PI, 0);
    pg2.noStroke();
    
    rot = rot - speed;
    pg2.popMatrix();
  } 
}
