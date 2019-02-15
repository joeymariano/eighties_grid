class Scrollr {
  float x;
  float y;
  float ang;
  boolean wave;
  
 Scrollr(){
   pg3.textFont(font);
   x = 30; 
   y = pg3.height+300;
   wave = false;
 }

 void update(String str, color colr){
   pg3.pushMatrix();
   pg3.textMode(SHAPE);
   pg3.textSize(140);
   pg3.fill(colrs[1]);
   pg3.text(str, x-5, y-3);
   pg3.fill(colr);
   pg3.text(str, x, y);
   pg3.popMatrix();
   
   if (wave == true){
    // do wave here
    y = y + sin(ang)*3;
    ang += .1;
   } else {
    y-=8.5; 
      if (y < 160){
        wave = true;
      }
   }
 }
}
