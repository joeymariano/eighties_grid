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
TriShadow triShad;

int c;
float a = 0.0;

PGraphics pg;
PGraphics pg2;

import processing.opengl.*;

void settings(){
  fullScreen(P3D);
  //size(800,450, P3D);
}

void setup(){
  pg = createGraphics(800,450, P3D);
  pg.noSmooth();
  pg2 = createGraphics(800,450, P3D);
  pg2.noSmooth();
  noCursor();
  background(white);
  grid1 = new Grid(black, 60, 0); 
  grid2 = new Grid(purple, 60, -20); 
  globe = new Globe(pink);
  squig = new Squig(yellow);
  cilly = new Cylinder(blue);
  triShad = new TriShadow(pink, black);
}

void draw(){
  pg.beginDraw();
  pg.background(white);
  // grid color, linespace, lineDepth
  grid2.update();
  grid1.update();
  pg.endDraw();
  //image(pg, 0,0);
  image(pg, 0,0, displayWidth, displayHeight);  // when fullscreen

  // random color note colrs[ int(random(0, 4)) ]
  pg2.beginDraw();
  pg.background(white, 0);
  // speed for bounce
  pg2.directionalLight(255, 255, 255, -1, 0, -3);
  globe.bounceGlobe(.2);
  squig.update();
  cilly.update();
  triShad.update();
  pg2.endDraw();
  //image(pg2, 0,0);
  image(pg2, 0,0, displayWidth, displayHeight);  // when fullscreen
  if (frameCount % 4 == 0){
  }
}
