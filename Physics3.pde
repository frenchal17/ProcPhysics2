void setup(){
  size(500,600);
  background(255,255,255);
}

//Weird diagonal (diamond?) egg

float k = 5;
float w = 7;
float x = 0;
float t = 0;
float c1 = 0.01;
float c2 = 0.004;

void draw(){
 // background(255,255,255);
  x = x + c1;
  t = t + c2;
  ellipse((width/2) - 200 * cos(w * t) * sin((k * x) - (w * t)),
          (height/2) - 300 * sin(k * x) * cos((k * x) - (w * t)),
          5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}
