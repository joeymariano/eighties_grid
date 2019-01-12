class Globe {
  color clr;
  float size;
  float x;
  float y;
  float d;
  float speed;
  
  Globe(){
    speed = 0;
    clr = pink;
    size = 40;
  }
  
  void update(){
    pg2.pushMatrix();
    pg2.translate(pg2.width/2 + sin(speed)*40,pg2.height/2 + cos(speed)*40,10 + sin(speed)*200);
    pg2.directionalLight(255, 255, 255, -1, 0, -3);
    pg2.noStroke();
    pg2.fill(clr);
    pg2.sphere(size);
    pg2.popMatrix();
  }
  
  void bounceGlobe(){
  if (frameCount % 2 == 0){
    speed = speed + .2;
  }
    globe.update();
  }
}
