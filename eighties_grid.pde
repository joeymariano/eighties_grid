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
Globe globe;

int c;
float a = 0.0;

PGraphics pg;
PGraphics pg2;

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
  globe = new Globe();

}

void draw(){
  pg.beginDraw();
  pg.background(white);
  // grid color, linespace, lineDepth
  grid1.update(black, 60, 0);
  pg.endDraw();
  image(pg, 0,0);

  // random color note colrs[ int(random(0, 4)) ]
  pg2.beginDraw();
  pg.background(white, 0);
  bounceGlobe();
  pg2.endDraw();
  image(pg2, 0,0);
}
