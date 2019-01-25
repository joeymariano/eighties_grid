class Scrollr {
  float x;
  float y;
  float ang;
  
  String str;
  
  boolean wave;
  
 Scrollr(String tempStr){
   pg3.textFont(font);
   str = tempStr;
   x = 30; 
   y = pg3.height+300;
   wave = false;
 }

 void update(){
   pg3.pushMatrix();
   pg3.textMode(SHAPE);
   pg3.textSize(140);
   pg3.fill(colrs[1]);
   pg3.text(str, x-5, y-3);
   pg3.fill(colrs[6]);
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
