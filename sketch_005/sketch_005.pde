//int field_width = screenWidth;
//int field_height = screenHeight;
float frame = 0;
int num = 800;
float[] x = new float[num];
float[] y = new float[num];
float[] w = new float[num];
float[] h = new float[num];

float[] xs = new float[num];
float[] ys = new float[num];

float[] size = new float[num];
float[] clr = new float[num];
 
void setup(){
  //size(field_width, field_height);
  size(1080,1080);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  //stroke(255);  
  noStroke();
  rectMode(CENTER);
  
  float s = 40;
  for(int i = num - 1 ; i > 0 ; i--) {
      x[i] = random(width);
      y[i] = random(height);
      xs[i] = (random(2)-1) * s;
      ys[i] = -(random(1)) *s ;
      size[i] = random(5)  ;
 
      w[i] = random(width/2);
      clr[i] = random(255);
      fill(i %2 * 255);
     rect(x[i], y[i], 5,5);
  }
  
  
}

void draw(){
  background(0); 
  fill(255);
  for(int i = num - 1 ; i > 0 ; i--) {
    //fill(i %2 * 255);
    
    xs[i] = (noise(frame/1000 + i*1000)-0.5) * 3;
    ys[i] = -noise(frame/1000 + i*2000) * 2;
    
    x[i] += xs[i];
    y[i] += ys[i];
    
     fill(clr[i]);
    size[i] = noise(frame/50 + i*3000) * 10;

      
     rect(x[i], y[i], size[i], size[i]);
     
     if(x[i] > width){
       x[i] =0;
     }else if(x[i] < 0){
       x[i] = width;
     }
     if(y[i] > height){
       y[i] =0;
     }else if(y[i] < 0){
       y[i] = height;
     }

  }
  frame++;
}


void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}