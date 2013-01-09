void setup() {
  size(1366, 768);
  smooth();
  background(47, 49, 82);
  }
  

  
void draw() {
  if (mousePressed) {
    fill(0);
    
  }  else  {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
 // fill(247, 110, 30, 100);
 // That doesn't work.  I changed the background of the drawing
 // but I can't figure out how to change the color of the circle

}  

