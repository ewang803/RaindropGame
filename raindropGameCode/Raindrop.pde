class Raindrop {
  PVector loc, vel;
  int diam;

  Raindrop(float x, float y, int tDiam) {
    diam = tDiam;
    loc = new PVector(random(width), 0);
    vel = new PVector(0, random(5));
  }

  void display() {
    noStroke();
    fill(loc.x, loc.y, random(200));
    noStroke();
    ellipse(loc.x, loc.y, 70, 50);
    triangle (loc.x+20, loc.y, loc.x+50, loc.y-20, loc.x+50, loc.y+20);
    fill(255);
    ellipse(loc.x-15, loc.y-2, 10, 10);
    fill(0);
    ellipse(loc.x-15, loc.y-2, 6, 6);
  }

  void fall() {
    loc.add(vel);
    vel.mult(1.5);
    vel.limit(20);
  }

  boolean isInContactWith(PVector mouse) {
    if (loc.dist(mouse) <= diam/2) {
      return true;
    } else return false;
  }

  void reset() {
    loc = new PVector(random(width), 0);
    ellipse(loc.x, loc.y, 50, 20);
    triangle (loc.x+20, loc.y, loc.x+40, loc.y-10, loc.x+40, loc.y+10);
    ellipse(loc.x-15, loc.y-2, 7, 7);
    ellipse(loc.x-15, loc.y-2, 3, 3);
    vel = new PVector(0, random(10));
  }
}