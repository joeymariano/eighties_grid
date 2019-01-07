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

void settings(){
  fullScreen(P3D);

}

void setup(){
  background(white);
  grid1 = new Grid(); 
  globe = new Globe();
}

void draw(){
  background(white);

  // grid color, linespace, lineDepth
  grid1.update(black, 60, 0);

  // grid color, size, x, y, d
  globe.update(colrs[ int(random(0, 4)) ], 40, displayWidth/2, displayHeight/2, 400);
  
}
