//Global Variables
float xFace, yFace, widthDiamterFace, heightDiamterFace;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;


void setup() {
  //Canvas will be added in later
  float xCenter = width/2;
  float yCenter = height/2;
  size(800, 600); // Landscape
  
  
  
  //Population - Face
  xFace = xCenter ;
  yFace = yCenter ;
  float smallerDimension;
  if (width > height) {smallerDimension = height;
  } else {smallerDimension = width;}
  widthDiamterFace =  smallerDimension;
  heightDiamterFace = smallerDimension;
  //End Population - Face
  
  
  //Population - Eyes
  xLeftEye = xCenter + 1/8;
  yLeftEye = yCenter ;
  eyeDiameter = smallerDimension*1/8;
  xRightEye = xCenter ;
  yRightEye = yCenter ;
  //End Population - Eyes
  
  
  ////Population - Nose
  //xNoseBridge = xCenter;
  //yNoseBridge = yCenter;
  //xLeftNostril = xCenter - 1/4;
  //yLeftNOstril = yCenter - 1/4;
  //xRightNostril = xCenter + 1/4;
  //yRightNostril = yCenter - 1/4;
  ////End Population - Nose
  
  
  ////Population Mouth
  //xLeftMouth = xCenter - 1/4;
  //yLeftMouth = yCenter - 1/4;
  //xRightMouth = xCenter + 1/4;
  //yRightMouth = yCenter - 1/4;
  ////End Population - Mouth
  
  
  //Population Measle
  //xMeasle = ;
  //yMeasle = ;
  //measleDiameter;
  //End Population Measle
  

  
}; // end setup

void draw() {

  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  //
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril);//Nose
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);//Mouth
  //
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  
}; // end draw

void keyPressed() {
};// end keyPressed

void mousePressed() {
};// end mousePressed

// End MAIN program
