class Scrollr {
  float x;
  float y;
  
  String str;
  
 Scrollr(String tempStr){
   pg3.textFont(font);
   str = tempStr;
   x = 10; 
   y = 100;
 }

 void update(){
 
   pg3.textSize(100);
   pg3.fill(colrs[1]);
   pg3.text(str, x-1, y-2);
   pg3.fill(colrs[6]);
   pg3.text(str, x, y);
 }
  
}
