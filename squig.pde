class Squig {
  
  float x = 40;
  float y = 40;
  
  void update(){
    pg2.pushMatrix();
    pg2.stroke(blue);
    pg2.strokeWeight(10);
    pg2.noFill();
    pg2.arc(50, 50, 50, 50, 0, PI);
    pg2.arc(100, 50, 50, 50, -PI, 0);
    pg2.popMatrix();
  } 
}
