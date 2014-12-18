void min2(){
  int m = minute();  // Values from 0 - 59
    noStroke();
   int x=255;
   int y=255;
   int z=255;  
 pushMatrix();
translate(0,80);
  //if(m%60>=0){x=0;y=0;z=0;}
    if(m%60>=10){
    fill(150,200, 200,mouseX/10+70);
    ellipse (370,120,80,80);}
    
    if(m%60>=20){fill(200,200, 230,mouseX/15+70);
    ellipse (380,150,85,85);}
    
    if(m%60>=30){fill(150,200, 230,mouseX/15+70);
    ellipse (360,200,85,85);}
     if(m%60>=40){fill(150,150, 230,mouseX/15+60);
    ellipse (360,300,85,85);}
     if(m%60>=50){fill(150,200, 250,mouseX/8+40);
    ellipse (390,360,100,95);}
  popMatrix();
    //fill(x, y, z);
     // ellipse (70,100,45,45);
      //fill(0);
     // ellipse(70,100,43,43);
     // fill(x, y, z);
     //ellipse (70 , 100, 35,35);
 }
