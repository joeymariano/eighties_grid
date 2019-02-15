// Visual program for live events.
// Made with Processing 3.4
// Copyright Joey Michalina Mariano

// colors
color pink = #FF48C4;
color blue = #2bd1fc;
color yellow = #f3ea5f;
color purple = #c04df9;
color red = #ff3f3f;
color white = #FFFFFF;
color black = #000000;
//  0: white, 1: black, 2: pink, 3: blue, 4: yellow, 5: purple, 6: red
color[] colrs = { white, black, pink, blue, yellow, purple, red };

// shapes
Grid grid1;
Grid grid2;
Globe globe;
Squig squig;
Cylinder cylinder;
TriShadow triShad;
Torus torus;
Scrollr scroller;

int c;
float a = 0.0;

// layers
PGraphics pg;
PGraphics pg2;
PGraphics pg3;

PFont font; 

//import processing.opengl.*;

void settings(){
  //fullScreen(P3D);
   size(800,450, P3D);  // not fullscreen
}

void setup(){
  pg = createGraphics(800,450, P3D);
  pg.noSmooth();
  pg2 = createGraphics(800,450, P3D);
  pg2.noSmooth();
  pg3 = createGraphics(800,450, P3D);
  pg3.noSmooth();
  noCursor();
  background(colrs[0]);
  
  font = createFont("Kinnari-Oblique-88.vlw", 100);
  
  // initialize Objects
  //  0: white, 1: black, 2: pink, 3: blue, 4: yellow, 5: purple, 6: red
  grid1 = new Grid(); 

  grid2 = new Grid(); 

  globe = new Globe();
  // color, size/length, thickness
  squig = new Squig(colrs[4], 20, 10);

  cylinder = new Cylinder();
  // color one, color two, speed
  triShad = new TriShadow(colrs[2], colrs[4], .05);
  // color, thickness, size
  torus = new Torus(colrs[2], 5, 50);
  //
  scroller = new Scrollr();
  // ηmlstyl
}

void draw(){
  // pg settings
  pg.beginDraw();
  pg.background(colrs[0]);
  // color (purple), spacing, line, 3d-depth
  grid2.update(colrs[1], 60, 0);
  grid1.update(colrs[5], 120, -20);
  pg.endDraw();
  
  // draw pg image buffer
  image(pg, 0,0);  // not fullscreen
  //image(pg, 0,0, displayWidth, displayHeight);  // when fullscreen
  

  // pg2 settings
  pg2.beginDraw();
  pg2.background(colrs[0], 0);
  pg2.directionalLight(200,200,200, -1, 0, -3);
  pg2.ambientLight(300,300,300);
  
  // draw objects
  // color (pink), transparency, speedIncrem
  globe.update(colrs[2], 255, .1);
  //squig.update();
  // color, radius, depth, speed
  cylinder.update(colrs[3],75, 175, 2);
  triShad.update();
  torus.update();
  pg2.endDraw();
  
  // draw pg2 image buffer
  image(pg2, 0,0);  // not fullscreen
  //image(pg2, 0,0, displayWidth, displayHeight);  // when fullscreen
  
    // pg3 settings
  pg3.beginDraw();
  pg3.background(colrs[0], 0);
  scroller.update("oh", colrs[6]);
  pg3.endDraw();
  
  // draw pg3 image buffer
  image(pg3, 0,0);  // not fullscreen
  //image(pg3, 0,0, displayWidth, displayHeight);  // when fullscreen
  if (frameCount % 8 == 0){
  saveFrame("4mov/########-viz.tga");
  }

}
