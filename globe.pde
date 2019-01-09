class Globe {
  
  void update(color clr, float size, float x, float y, float d){
    pg2.pushMatrix();
    pg2.translate(x,y,d);
    pg2.directionalLight(255, 255, 255, -1, 0, -3);
    pg2.noStroke();
    pg2.fill(clr);
    pg2.sphere(size);
    pg2.popMatrix();
  }
}

void bounceGlobe(){
  if (frameCount % 2 == 0){
    a = a + .2;
  }
  // globe color, size, x, y, d
  globe.update(pink, 40, pg2.width/2 + sin(a)/40, pg2.height/2 + sin(a)*40, 10 + sin(a)*200);
}
