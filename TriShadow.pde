class TriShadow{
  color colr1;
  color colr2;
  float offset;
  float angle;
  float nextX;
  float nextY;
  float radius;

 TriShadow(color tempColr1, color tempColr2){
   colr1 = tempColr1;
   colr2 = tempColr2;
   radius = 40;
   offset = 10;
 }
 
 void update(){
   pg2.pushMatrix();
   pg2.translate(pg.width/8, pg.height/8, 0);
   pg2.noStroke();
   
   pg2.fill(colr2);
   pg2.beginShape();
   for(float deg = 0; deg < 360; deg += 120){
    angle = deg * PI / 180;
    nextX = (cos(angle) * radius) + offset;
    nextY = sin(angle) * radius;
    pg2.vertex(nextX, nextY);
   }
   pg2.endShape(CLOSE);
   
   pg2.fill(colr1);
   pg2.beginShape();
   for(float deg = 0; deg < 360; deg += 120){
    angle = deg * PI / 180;
    nextX = cos(angle) * radius;
    nextY = sin(angle) * radius;
    pg2.vertex(nextX, nextY);
   }
   pg2.endShape(CLOSE);
    
   pg2.popMatrix();
 }
}
