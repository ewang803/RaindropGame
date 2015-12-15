//Declare
PVector mouse;  
Raindrop f;
Bucket d;

void setup() {
  size(1000, 700);
  mouse = new PVector();                
  f = new Raindrop(random(width), 0, int(random(40, 100)));
  d = new Bucket();
}

void draw() {
  mouse.set(mouseX, mouseY);             
  background(15, 48, 105);
  f.fall();         
  f.display();
  d.display();
  if (f.isInContactWith(mouse,300)) {      
    f.reset();
  }
  if (f.loc.y >= height + f.diam/2) {    
    f.reset();
  }
}