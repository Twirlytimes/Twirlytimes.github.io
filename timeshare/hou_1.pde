void hou1(){
   int h = hour();  // Values from 0 - 59
    noStroke();
   int x=255;
   int y=255;
   int z=255;  
 pushMatrix();
translate(0,80);
  //if(m%10==0){x=0;y=0;z=0;}
    if(h%10>=1){
    fill(150,140, 100,mouseX/10+30);
    ellipse (180,90,95,100);
    ellipse (180,90,100,105);} 
     if(h%10>=2){
     fill(160,120, 0,mouseX/10+50);
     ellipse (210,130,100,100);}
     if(h%10>=3){
     fill(260,120, 10,mouseY/10+60);
     ellipse (240,190,90,90);}
     if(h%10>=4){
     fill(255,120, 20,mouseX/15+40);
     ellipse (210,230,100,100);}
     if(h%10>=5){ 
       fill(100,150, 100,mouseY/10+60);
     ellipse (240,300,120,120);}
     if(h%10>=6){ 
       fill(100,150, 100,mouseX/10+50);
     ellipse (230,360,60,60);}
     if(h%10>=7){
       fill(100,150, 100,mouseX/10+50);
     ellipse (250,380,60,60);}
     if(h%10>=8){
       fill(100,110, 100,mouseX/10+45);
     ellipse (240,200,mouseY/30+100,mouseY/30+100);}
     if(h%10>=9){
       fill(100,110, 100,mouseY/10+45);
     ellipse (200,220,mouseY/30+60,mouseY/30+60);}
       popMatrix();
    
     
     // fill(x, y, z,50);
     // ellipse (130,150,45,45);
     // fill(0);
     // ellipse(130,100,43,43);
     // fill(x, y, z,50);
    // ellipse (130 , 150, 40,40);
 }
