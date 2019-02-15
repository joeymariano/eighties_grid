class Globe {
  float size;
  float x;
  float y;
  float d;
  float speed;
  
  Globe(){
    speed = 0;
    size = 40;
  }
  
  void update(color colr, float translucent, float speedIncrem){
    pg2.pushMatrix();
    pg2.translate(pg2.width/2 + sin(speed)*40, pg2.height/2 + cos(speed)*40, 60 + sin(speed)*50);

    pg2.noStroke();
    pg2.fill(colr, translucent);
    pg2.sphere(size);
    pg2.popMatrix();
    bounceGlobe(speedIncrem);
  }
  
  void bounceGlobe(float speedIncrem){
    if (frameCount % 2 == 0){
      speed = speed + speedIncrem;
    }
  }
}
