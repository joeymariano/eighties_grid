//color pink = #FF48C4;
//color blue = #2bd1fc;
//color yellow = #f3ea5f;
//color purple = #c04df9;
//color red = #ff3f3f;
//color white = #FFFFFF;
//color black = #000000;

//color pink = #FF48C4;
//color blue = #2bd1fc;
//color yellow = #f3ea5f;
//color purple = #c04df9;
//color red = #ff3f3f;
//color white = #FFFFFF;
//color black = #000000;
//  0: white, 1: black, 2: pink, 3: blue, 4: yellow, 5: purple, 6: red
color[] pal1 = { white, black, pink, blue, yellow, purple, red };

color p = #f2a9e0; // pink
color g = #b4f371;  // green
color lg = #d8f1b8;  // lGreen
color b = #a4d5f5;  // blue
color pur = #7948bd;  //purple
color w = #FFFFFF;  // white
color bl = #000000;  // black
color[] pal2 = { w, bl, p, g, lg, b, pur };

int paletteSwitch = 0;

void keyPressed(){
  if (key == 'p' || key == 'P'){    
    shufflePalette();
  }
}

void shufflePalette(){  
  switch(paletteSwitch){
   case 0:
      for (int i = 0; i < 7; i++){
        colrs[i] = pal1[i];
        print(i);
      }
      paletteSwitch = 1;
     break;
     
   case 1:
     for (int i = 0; i < 7; i++){
        colrs[i] = pal2[i];
        print(i);
      }
      paletteSwitch = 0;
     break;
  }
}
