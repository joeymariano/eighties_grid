class Globe {
  
  void update(color clr, float size, float x, float y, float d){
    pushMatrix();
    translate(x,y,d);
    directionalLight(255, 255, 255, -1, 0, -3);
    noStroke();
    fill(clr);
    sphere(size);
    popMatrix();
  }
}

void bounceGlobe(){
  if (frameCount % 2 == 0){
    a = a + .2;
  }
  // globe color, size, x, y, d
  globe.update(pink, 40, displayWidth/2 + sin(a)/40, displayHeight/2 + sin(a)*40, 400 + sin(a)*200);
}
