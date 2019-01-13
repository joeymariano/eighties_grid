class TriShadow{
  color colr1;
  color colr2;
  float angle;
  float nextX;
  float nextY;
  float radius;
  float rot;
  float speed;

 TriShadow(color tempColr1, color tempColr2){
   colr1 = tempColr1;
   colr2 = tempColr2;
   radius = 60;
   speed = .1;
 }
 
 void update(){
   pg2.pushMatrix();
   pg2.translate(pg.width/8, pg.height/8, 0);
   //pg2.rotateX(100);
   pg2.rotateZ(rot);
   pg2.rotateY(rot/4);
   pg2.noStroke();
  
   makeTri(colr1, 0, 0);
   
   makeTri(colr2, -10, 10);
     
   pg2.popMatrix();
   rot = rot - speed;
 }
 
 void makeTri(color colr, float depth, float offset){
   pg2.beginShape();
   for(float deg = 0; deg < 360; deg += 120){
    angle = deg * PI / 180;
    nextX = (cos(angle) * radius);
    nextY = sin(angle) * radius;
    pg2.fill(colr);
    pg2.vertex(nextX+offset, nextY+offset, depth);
   }
   pg2.endShape(CLOSE);
 }
}
