//Declare  
ArrayList<Raindrop> particles = new ArrayList<Raindrop>();
Raindrop f;
Bucket d;
PVector mouse;

void setup() {
  size(1000, 700);   
  mouse = new PVector (mouseX, height-150);
  particles.add(new Raindrop(mouseX, mouseY));

  d = new Bucket();
}

void draw() {      
  background(15, 48, 105);
  if (frameCount%15 == 0) {
    particles.add(new Raindrop(mouseX, mouseY));
  }
  d.display();
  for (int i = particles.size()-1; i >= 0; i--) {  
    Raindrop p = particles.get(i);    
    p.display();                      
    p.fall();                         
    if (p.isDead(mouseX, height-50)) {                 
      particles.remove(i);
    }
  }
}