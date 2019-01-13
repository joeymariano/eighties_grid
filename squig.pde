class Squig {
  float x;
  float y;
  color colr;
  
  Squig(color tempColr){
    x = 40;
    y = 40;
    colr = tempColr;
  }
  
  void update(){
    pg2.pushMatrix();
    pg2.stroke(colr);
    pg2.strokeWeight(10);
    pg2.noFill();
    pg2.arc(50, 50, 50, 50, 0, PI);
    pg2.arc(100, 50, 50, 50, -PI, 0);
    pg2.noStroke();
    pg2.popMatrix();
  } 
}
