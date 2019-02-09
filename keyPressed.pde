void keyPressed(){

  if (key == 'p' || key == 'P'){
    
    
    //color pink = #FF48C4;
    //color blue = #2bd1fc;
    //color yellow = #f3ea5f;
    //color purple = #c04df9;
    //color red = #ff3f3f;
    //color white = #FFFFFF;
    //color black = #000000;
    
    color p = #f2a9e0; // pink
    color g = #b4f371;  // green
    color lg = #d8f1b8;  // lGreen
    color b = #a4d5f5;  // blue
    color pur = #7948bd;  //purple
    color w = #FFFFFF;  // white
    color bl = #000000;  // black
    color[] colrs2 = { w, bl, p, g, lg, b, pur };

    
    for (int i = 0; i < 7; i++){
      colrs[i] = colrs2[i];
      print(i);
    }
  }
}
