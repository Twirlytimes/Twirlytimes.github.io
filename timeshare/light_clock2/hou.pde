void hou(){
   int h = hour();    // Values from 0 - 23
    noStroke();
   int x=255;
   int y=255;
   int z=255;  
   pushMatrix();
   translate(0,80);
  //if(h%60>=0){
    //fill(230,140, 100,mouseX/10+40);
    //ellipse (60,200,95,100); }
    if(h%60>=10){
      fill(200,0, 10,mouseX/10+40);
    ellipse (90,240,95,100);} 
     if(h%60>=20){
       fill(220,0, 30,mouseX/10+40);
    ellipse (100,300,115,120);}
  popMatrix();
    
      //fill(x, y, z);
      //ellipse (70,40,45,45);
     // fill(0);
      //ellipse(70,40,43,43);
     // fill(x, y, z);
     //ellipse (70 , 40, 35,35);
 }
