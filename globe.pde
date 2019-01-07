class Globe {
  
  void update(color clr, int size, int x, int y, int d){
    pushMatrix();
    translate(x,y,d);
    directionalLight(255, 255, 255, -1, 0, -3);
    noStroke();
    fill(clr);
    sphere(size);
    popMatrix();
  }
}
