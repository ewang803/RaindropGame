class Bucket {
  PVector loc;
  int diam;

  Bucket() {
    loc = new PVector (mouseX, height-150);
  }

  void display() {
    loc = new PVector (mouseX, height-150);
    fill(255, 215, 94);
    stroke(240, 230, 140);
    arc(loc.x, loc.y+75, 150, 150, 0, PI);

    fill(255, 215, 94);
    stroke(0, 0, 0);
    arcbloc.x, loc.y+105, 50, 40, 0, PI);

    stroke(255, 162, 0);

    fill(255, 162, 0);
    triangle(loc.x-140, loc.y+65, loc.x-170, loc.y+55, loc.x-150, loc.y+35);

    fill(255, 215, 94);
    stroke(240, 230, 140);
    ellipse(loc.x-100, loc.y+35, 100, 100);

    fill(0);
    noStroke();
    ellipse(loc.x-117, loc.y+29, 10, 10);
  }
}