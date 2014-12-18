/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/8414*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
int numBlobs = 3;
PImage bg;
int a;
float offset;
int x = 30;
PFont fontA;
PFont fontB;

int[] blogPx = { 0, 90, 90 };
int[] blogPy = { 0, 120, 45 };

// Movement vector for each blob
int[] blogDx = { 1, 1, 1 };
int[] blogDy = { 1, 1, 1 };

PGraphics pg;
int[][] vy,vx; 
float count; 
float direction; 
boolean hello;
float msc=0;


void setup() {
  size(640, 640, P2D);
  //size(640, 427, P2D);
  //size(1280, 720, P2D);
  smooth();
  pg = createGraphics(160, 160, P2D);  
  // pg = createGraphics(160, 90, P2D);  
  // pg = createGraphics(1280, 720, P2D);    
  vy = new int[numBlobs][pg.height];
  vx = new int[numBlobs][pg.width];
   //a = loadImage("Section.jpg");
   //bg = loadImage("watch.png");
   
   frameRate(30);
   //fontA = loadFont("Annifont-48.vlw");
   //fontB = loadFont("Annifont-48.vlw");
   //textFont(fontA, 32);
   //textFont(fontB, 20);
   direction = 1; 
}

void draw() {
  regularTime();
  
  //image(a, 0, 0); 
  //image(pg, 0, 0, width, height);
  //int s = second();
  //int m = minute();
  //int h = hour();
  
  count += direction; 
  if (count == 29) {
    direction = -1; 
  } 
  if (count == 0) { 
    direction = 1; 
  }
  count = count%30; 
  
  for (int i=0; i<numBlobs; ++i) {
    blogPx[i]+=blogDx[i];
    blogPy[i]+=blogDy[i];

    // bounce across screen
    if (blogPx[i] < 0) {
      blogDx[i] = 1;
    }
    if (blogPx[i] > pg.width) {
      blogDx[i] = -1;
    }
    if (blogPy[i] < 0) {
      blogDy[i] = 1;
    }
    if (blogPy[i] > pg.height) {
      blogDy[i]=-1;
    }

    for (int x = 0; x < pg.width; x++) {
      vx[i][x] = int(sq(blogPx[i]-x));
    }

    for (int y = 0; y < pg.height; y++) {
      vy[i][y] = int(sq(blogPy[i]-y)); 
    }
  }

  // Output into a buffered image for reuse
  pg.beginDraw();
  pg.loadPixels();
  for (int y = 0; y < pg.height; y++) {
    for (int x = 0; x < pg.width; x++) {
      int o = 1;
      if( hello == true)
        {
        for (int i = 0; i < numBlobs; i++) {
          // Increase this number to make your blobs bigger
          o += 160000/(vy[i][y] + vx[i][x]+1);
        }
      }
//      pg.pixels[x+y*pg.width] = color(300, o+x, (x+o+y)/2);
        pg.pixels[x+y*pg.width] = color(0,0,(x+o+y)/2);
    }
  }
  pg.updatePixels();
  pg.endDraw();
  
  int s = second();
  int m = minute();
  int h = hour();
  
  
  // Display the results
 // background(bg);
  //image(pg, 0, 0, width, height); 
 
     
  
  hou();
  hou1();
  min2();
  min1();
  
  

   
   
  float offsetTarget = map(s*3, 0, width,height, 0);
  offset += (offsetTarget-offset)*0.5;
  //if(second() <= 30){tint(s*10, 150);}
  //if(second() >= 30){tint(300-(s*10), 150); }
  tint(6.0*count, 120);
  image(pg, 0, 0, pg.width*5, pg.height*5);
  fill(0,60);
  //min1();
  filter(BLUR, 1.5);
  
  //text("light", mouseX, 200);
  //text("second()", x+440, 200);
  //text("Processing", x+220, 300);
  //text("Light", x+250, 340); COMMENT
  //text("Clock", x+250, 370); COMMENT
  //image(bg, 0, 0);
  
  
}

void mousePressed() {
  hello = hello ? false : true;
}

void regularTime() {
  background(0);
  //translate(width / 2, height / 2);
   
  // clock circle
  strokeWeight(8);
  fill (0);
  stroke(255);
  ellipse(width / 2, height / 2, 450, 450);
   
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  int s = second();
  
   
  //seconds
   
   
  stroke(0);
  strokeWeight(8);
  float sy=map(millis(),0,1000,0,10);
   
   
  float radSec = (360 / 60000 *second())+0.6*sy;
   
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(radians(radSec));
  line(0,0,0,-480);
  popMatrix();
  
  
   
  // minutes
   
  stroke(0);
  strokeWeight(8);
  float radMin = 360 / 60 * minute();
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(radians(radMin));
  line(0,0,0,-480);
  popMatrix();
   
  // hours
  strokeWeight(24);
  float radHour = 360 / 12 * hour();
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(radians(radHour));
  line(0,0,0,-480);
  popMatrix();
}


