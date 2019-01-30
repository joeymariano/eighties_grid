class Globe {
  color clr;
  float size;
  float x;
  float y;
  float d;
  float speed;
  float translucent;
  
  Globe(color tempColr, float tempTranslucent){
    speed = 0;
    clr = tempColr;
    size = 40;
    translucent = tempTranslucent;
  }
  
  void update(){
    pg2.pushMatrix();
    pg2.translate(pg2.width/2 + sin(speed)*40, pg2.height/2 + cos(speed)*40, 60 + sin(speed)*50);

    pg2.noStroke();
    pg2.fill(clr, translucent);
    pg2.sphere(size);
    pg2.popMatrix();
  }
  
  void bounceGlobe(float speedIncrem){
  if (frameCount % 2 == 0){
    speed = speed + speedIncrem;
  }
    globe.update();
  }
}
