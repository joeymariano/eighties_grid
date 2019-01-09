//colors
color pink = #FF48C4;
color blue = #2bd1fc;
color yellow = #f3ea5f;
color purple = #c04df9;
color red = #ff3f3f;
color white = #FFFFFF;
color black = #000000;
color[] colrs = {pink, blue, yellow, purple, red};

Grid grid1;
Grid grid2;
Globe globe;
Squig squig;
Cylinder cilly;

int c;
float a = 0.0;

PGraphics pg;
PGraphics pg2;

import processing.opengl.*;

void settings(){
  //fullScreen(P3D);
  size(800,450, P3D);
}

void setup(){
  pg = createGraphics(800,450, P3D);
  pg2 = createGraphics(800,450, P3D);
  noCursor();
  background(white);
  grid1 = new Grid(); 
  grid2 = new Grid(); 
  globe = new Globe();
  squig = new Squig();
  cilly = new Cylinder();

}

void draw(){
  pg.beginDraw();
  pg.background(white);
  // grid color, linespace, lineDepth
  grid2.update(purple, 60, -20);
  grid1.update(black, 60, 0);
  pg.endDraw();
  image(pg, 0,0);
  //image(pg, 0,0, displayWidth, displayHeight);  // when fullscreen

  // random color note colrs[ int(random(0, 4)) ]
  pg2.beginDraw();
  pg.background(white, 0);
  bounceGlobe();
  //squig.update();
  cilly.update();
  pg2.endDraw();
  image(pg2, 0,0);
  //image(pg2, 0,0, displayWidth, displayHeight);  // when fullscreen
}
