float xstart, xnoise, ynoise;
void setup(){
  //size(720, 480);

  size(1080, 1350, P3D);
  smooth();
  colorMode(HSB, 100);
  noStroke();
  //noFill();
  //frameRate(10);
  frameRate(60);
  background(0);
  xstart = 0;
  xnoise = xstart;
  ynoise = 0;
  
}

float frame= 0;


float xScroll = 0;
float yScroll = 0;
void draw(){
  //background(0);
  //noStroke();
  fill(0);
  rect(0,0,width,height);
  //xScroll += 0.05;
  yScroll += 0.01;
  //xnoise = xstart;
  ynoise = 0;
  
  for(int y = 0; y <= height; y += 8 ){
     
    ynoise += 0.01;
    xnoise = xstart;
    for(float x = 0; x <= width; x +=  8 ){
      xnoise += 0.01;
      pushMatrix();
      
      translate(x, y);
      rotate(noise(xnoise + xScroll, ynoise + yScroll, frame) * PI * 15);
      
      //drawPoint(0, 0, noise(xnoise + xScroll, ynoise + yScroll, frame));
      
      fill((noise(xnoise + xScroll, ynoise + yScroll, frame)*200%50 + y/50 + 40 ) %100, 100, 100 );
      //stroke(200);
      rect(0, -1, 40, 2);
      
      popMatrix();
    }
  } 
  
  
  frame += 0.01;
  
}









void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}
  