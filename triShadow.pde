class TriShadow{
  color colr1;
  color colr2;
  float angle;
  float nextX;
  float nextY;
  float radius = 60;
  float rot;
  float speed;

 TriShadow(color tempColr1, color tempColr2, float tempSpeed){
   colr1 = tempColr1;
   colr2 = tempColr2;
   speed = tempSpeed;
 }
 
 void update(){
   pg2.pushMatrix();
   pg2.translate(pg.width/3, pg.height/3, 0);
   //pg2.rotateX(100);
   pg2.rotateZ(rot);
   pg2.rotateY(rot/4);
   pg2.noStroke();
  
   makeTri(colr1, 0, 0);
   
   makeTri(colr2, -18, 10);
     
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
