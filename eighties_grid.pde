//colors
color pink = #FF48C4;
color blue = #2bd1fc;
color yellow = #f3ea5f;
color purple = #c04df9;
color red = #ff3f3f;
color white = #FFFFFF;
color black = #000000;
color[] colrs = {pink, blue, yellow, purple, red};

Grid grid;

int c;
float spin;

void settings(){
  fullScreen(P3D);

}

void setup(){
  background(white);
  grid = new Grid(); 
}

void draw(){
  spin += .2;
  translate(displayWidth/2, displayHeight/2);
  rotate(radians(spin));
  background(white);
  
  // grid color, linespace
  grid.update(black, 60);
  grid.update(pink, 80);
}
