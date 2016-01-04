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
    fill(loc.y, random(200)-loc.y, random(200));
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
    if (loc.dist(mouse) <= diam/2-75 || loc.dist(mouse) <= diam/2+75) {
      return true;
    } else return false;
  }

  void reset() {
    rloc = new PVector(random(width), 0);
    ellipse(rloc.x, rloc.y, 50, 20);
    triangle (rloc.x+20, rloc.y, rloc.x+40, rloc.y-10, rloc.x+40, rloc.y+10);
    ellipse(rloc.x-15, rloc.y-2, 7, 7);
    ellipse(rloc.x-15, rloc.y-2, 3, 3);
    rvel = new PVector(0, random(10));
  }
}