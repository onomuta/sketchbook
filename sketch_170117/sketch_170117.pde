int numPar = 50;
Par[] pars = new Par[numPar];

void setup()
{
  size(1280, 720);
  colorMode(HSB, 1);
  frameRate(30);
  smooth(4);
  noStroke();
  background(0);
  //blendMode(ADD);

  for (int i = 0; i< pars.length; i++){
    pars[i] = new Par(i/pars.length);
  }
}

void draw()
{ 
  for (int i = 0; i< pars.length; i++){
    pars[i].move();
    pars[i].display();
  }//delay(200);
}

class Par{
  float x, y, d;
  float cx, cy, cd;
  float cyFrom;
  float cs;
  float cl;
  float clFrom;
  float hue;
  Par(float huee){
     x  = random(width);
     y  = random(height);
     d  = random(100);
     cd = random(d/2);
     cx = random( x -(d/2) + cd/2,  x +(d/2) - cd/2);
     cy = y;
     cyFrom = y;
     cs = random(3);
     cl = 0;
     clFrom = cl;
     hue = huee;
  }
  void move(){
    if(cl > 0){
      cy = cy + 1*cs;
      cl = cl - 1;
    }else if(cl<=0){
      x = random(width);
      y = random(height);
      d = random(200);
    
      cd = random(d/2);
      cx = random( x -(d/2) + cd/2,  x +(d/2) - cd/2);
      cy = y;
      cyFrom = y;
      cs = random(1);
      cl = random(200);
      clFrom = cl;
      hue = random(1);
      fill(hue,1,1); 
      ellipse(x,y,d,d);
    }
  }
  
  void display(){
    fill(hue,1,1); 
    ellipse(cx,cy,cd,cd);
  }
}

void mouseClicked() {
  background(0);
}