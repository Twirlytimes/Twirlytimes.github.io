void min1(){
   int m = minute();  // Values from 0 - 59
    noStroke();
   int x=255;
   int y=255;
   int z=255;  
 pushMatrix();
translate(0,80);
  //if(m%10==0){x=0;y=0;z=0;}
    if(m%10>=1){
    fill(140,200, 100,mouseX/10+30);
    ellipse (560,120,80,80);
    ellipse (560,120,85,85);} 
     if(m%10>=2){
     fill(100,160, 100,mouseX/10+30);
     ellipse (520,160,80,75);
     ellipse (520,160,85,80);}
     if(m%10>=3){
     fill(100,180, 100,mouseY/10+50);
     ellipse (550,190,70,70);
   ellipse (550,190,75,75);}
     if(m%10>=4){
     fill(100,170, 100,mouseX/15+40);
     ellipse (540,230,80,80);}
     if(m%10>=5){ 
       fill(100,150, 100,mouseY/10+60);
     ellipse (580,300,60,60);}
     if(m%10>=6){ 
       fill(100,190, 100,mouseX/10+50);
     ellipse (570,360,70,65);}
     if(m%10>=7){
       fill(100,200, 100,mouseX/10+50);
     ellipse (590,380,70,70);}
     if(m%10>=8){
       fill(100,180, 100,mouseX/10+45);
     ellipse (570,90,80,80);}
     if(m%10>=9){
       fill(100,150, 60,mouseY/10+45);
     ellipse (600,250,70,70);}
       popMatrix();
     // fill(x, y, z,50);
     // ellipse (130,150,45,45);
     // fill(0);
     // ellipse(130,100,43,43);
     // fill(x, y, z,50);
    // ellipse (130 , 150, 40,40);
 }
