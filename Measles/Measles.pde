//Global Variables
float xFace, yFace, widthDiamterFace, heightDiamterFace;

void setup() {
  //Canvas will be added in later
  float xCenter = width/2;
  float yCenter = height/2;
  size(800, 600); // Landscape
  //Population
  xFace = xCenter ;
  yFace = yCenter ;
  float smallerDimension;
  if (width > height) {smallerDimension = height;
  } else {smallerDimension = width;}
  widthDiamterFace =  smallerDimension;
  heightDiamterFace = smallerDimension;
  
}; // end setup

void draw() {

  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  
}; // end draw

void keyPressed() {
};// end keyPressed

void mousePressed() {
};// end mousePressed

// End MAIN program
