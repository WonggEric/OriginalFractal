void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);
  translate(width/2, height/10);
  rotate(PI/4); 
  kochFractal(550, 5);
  strokeWeight(1);
}

void kochFractal(float len, int n) {
  for (int i = 0; i < 5; i++) {
    kochSegment(len, n);
    rotate(PI/2);
  }
}

void kochSegment(float len, int n) {
  if (n == 0) {
    line(0, 0, len, 0);
    translate(len, 0);
  } else {
    n--;
    kochSegment(len/3, n);
    rotate(-PI/3);
    kochSegment(len/3, n);
    rotate(2*PI/3);
    kochSegment(len/3, n);
    rotate(-PI/3);
    kochSegment(len/3, n);
  }
}
