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

void settings(){
  fullScreen(P3D);
}

void setup(){
  pg = createGraphics(800,450, P3D);
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

  // random color note colrs[ int(random(0, 4)) ]
  
  //bounceGlobe();
  pg.endDraw();
  image(pg, 0,0, displayWidth, displayHeight);
}
