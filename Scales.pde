void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  boolean shifties = true;
  for (int y = 0; y <=600; y+=40)
  {
    for (int x = 0; x <= 600; x+=40)
    {
      if (shifties == true)
        scale(x+20, y);
      else
        scale(x, y);
    }
    if (shifties == true)
      shifties = false;
    else 
    shifties = true;
  }
}

void scale(int x, int y) {
  fill(253,7,253);
  stroke(255,100,253);
  strokeWeight(4);
  rect(x-25, y-25, 50, 50);
  int diam = 0;
  float g = (float)(Math.random()*255);
  float r = (float)(Math.random()*255);
  float b = (float)(Math.random()*255);
  noFill();
  while (diam < 48) {
    stroke(r, g, b);
    ellipse(x, y, diam, diam);
    diam++;
    g-=255/(Math.random()*255);
    r+=255/(float)(Math.random()*255);
    b+=255/(float)(Math.random()*255);
  }
}
