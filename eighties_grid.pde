// Visual program for live events.
// Made with Processing 3.4

// colors
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
  //fullScreen(P3D);
   size(800,450, P3D);  // not fullscreen
}

void setup(){
  pg = createGraphics(800,450, P3D);
  pg.noSmooth();
  pg2 = createGraphics(800,450, P3D);
  pg2.noSmooth();
  noCursor();
  background(white);
  grid1 = new Grid(black, 60, 0); 
  // color, spacing, line, 3d-depth
  grid2 = new Grid(purple, 60, -20); 
  // color
  globe = new Globe(pink);
  // color, size/length, thickness
  squig = new Squig(red, 20, 10);
  // color, radius, depth
  cilly = new Cylinder(blue, 100, 200);
  // color one, color two, speed
  triShad = new TriShadow(pink, yellow, .2);
}

void draw(){
  pg.beginDraw();
  pg.background(white);
  grid2.update();
  grid1.update();
  pg.endDraw();
  image(pg, 0,0);  // not fullscreen
  //image(pg, 0,0, displayWidth, displayHeight);  // when fullscreen

  pg2.beginDraw();
  pg.background(white, 0);

  pg2.directionalLight(255, 255, 255, -1, 0, -3);
  pg2.ambientLight(102, 102, 102);
  
  // speed for bounce
  globe.bounceGlobe(.2);
  squig.update();
  cilly.update();
  triShad.update();
  pg2.endDraw();
  
  image(pg2, 0,0);  // not fullscreen
  //image(pg2, 0,0, displayWidth, displayHeight);  // when fullscreen
  if (frameCount % 4 == 0){
  }
}
