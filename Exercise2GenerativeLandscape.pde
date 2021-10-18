float x1, y1, x2, y2, offset = 0, easing = 0.1;
PImage bg, img;
int y;

void setup() {
  size(1920, 1080);
  bg = loadImage("mountainbackground.jpg");
  img = loadImage("tree.jpg");
}

void draw() {
  //draws background
  background(bg);
  //draws a line that reaptedly goes from top to bottom of the page
  stroke(226, 204, 0); 
  line(0, y, width, y);
  // Display at full opacity
  image(img, 0, 0);  
  //moves around a separate tree with mouse
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  // Display at half opacity
  tint(255, 127);  
  image(img, offset, 0);

  y++;
  if (y > height) {
    y = 0; 
  }
}
