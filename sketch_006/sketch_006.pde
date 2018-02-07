//int field_width = screenWidth;
//int field_height = screenHeight;
float frame = 0;
int num = 100;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];

float[] xs = new float[num];
float[] ys = new float[num];

float[] scale = new float[num];
float[] clr = new float[num];
 
void setup(){
  //size(field_width, field_height);
  //size(1080,1080);
  size(600,600, P2D);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  strokeWeight(4);
  //stroke(255);  
  noStroke();
  rectMode(CENTER);
  
  float s = 40;
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      xs[i] = (random(2)-1) * s;
      ys[i] = -(random(1)) *s ;
 
      w[i] = random(width/2);
      clr[i] = random(255);
      
      scale[i] = random(width/2);
  }
  
  
}

void draw(){
  background(0); 
  stroke(255);
  for(int i = num - 1 ; i > 0 ; i--) {
    //fill(i %2 * 255);
    
    xs[i] = (noise(frame/1000 + i*1000)-0.5) * 3;
    ys[i] = -noise(frame/1000 + i*2000) * 2;
    
    x[i] += xs[i];
    y[i] += ys[i];
    
     //fill(clr[i]);
     scale[i] += 5;
     
     if(scale[i] > sqrt(2*max(width, height) * max(width, height))){
       scale[i] = 0;
     }
     
     
     arc(width/2,  height/2, scale[i] , scale[i] , i, PI );


  }
  frame++;
}


void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}