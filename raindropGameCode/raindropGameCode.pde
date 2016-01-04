//Declare  
Raindrop f;
Bucket d;
PVector mouse;

void setup() {
  size(1000, 700);   
  mouse = new PVector (mouseX, height-150);
  f = new Raindrop(random(width), 0, int(random(40, 100)));
  d = new Bucket();
}

void draw() {      
   mouse = new PVector (mouseX, height-150);
  background(15, 48, 105);
  f.fall();         
  f.display();
  d.display();
  if (f.isInContactWith(mouse)) {      
    f.reset();
  }
  if (f.rloc.y >= height + f.rdiam/2) {    
    f.reset();
  }
}