//Global Variables
float xFace, yFace, widthDiamterFace, heightDiamterFace, faceRadius, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth, xCenterMouth, yCenterMouth;
float xMeasle, yMeasle, measleDiameter;
float xCenter, yCenter;
color resetWhite = #FFFFFF, red = #FF0000; //this is not populated as population needs display(hence why unique)
// color, is similar to and int declaration 


void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
  size(800, 600); // Landscape
  
  //Population - Face
  xFace = xCenter ;
  yFace = yCenter ;
  if (width > height) {smallerDimension = height;
  } else {smallerDimension = width;}
  widthDiamterFace =  smallerDimension;
  heightDiamterFace = smallerDimension;
  //End Population - Face
  
  
  //Population - Eyes
  xLeftEye = xCenter - xCenter*1/4;
  yLeftEye = yCenter - yCenter*1/4;
  eyeDiameter = smallerDimension*1/8;
  xRightEye = xCenter + xCenter*1/4;
  yRightEye = yCenter - yCenter*1/4;
  //End Population - Eyes
  
  
  //Population - Nose
  xNoseBridge = xCenter;
  yNoseBridge = yCenter - yCenter*1/8;
  xLeftNostril = xCenter + xCenter*1/6;
  yLeftNOstril = yCenter + yCenter*1/8;
  xRightNostril = xCenter - xCenter*1/6;
  yRightNostril = yCenter + yCenter*1/8;
  //End Population - Nose
  
  
  //Population Mouth
  xLeftMouth = xCenter - xCenter*1/4;
  yLeftMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  
  xCenterMouth = xCenter - xCenter*1/4;
  yCenterMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  xLeftMouth = xCenter - xCenter*1/4;
  yLeftMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  //End Population - Mouth
  
  
  
  faceRadius = smallerDimension/2;
  //Population Measle
  measleDiameter = smallerDimension*1/50;
  //End Population Measle
  
  // the face ellipse is put here in the 'void setup' as to have the face drawn once, go to 'void draw' for explanation
  background(color(random(0, 255), random(0, 255), random(0, 255)));
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  //sequential programming
  
}; // end setup

void draw() {
  // in void draw, the following code put here is being printed/drawn 60times per second
  //

  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril);//Nose
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  line(xCenterMouth, yCenterMouth, xRightMouth, yRightMouth);//Mouth 1
  line(xCenterMouth, yCenterMouth, xLeftMouth, yLeftMouth); //MOuth 2
  //
  xMeasle = random(xCenter - faceRadius, xCenter + faceRadius);
  yMeasle = random(0, smallerDimension);
  fill(red);
  noStroke();
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //resets default  
  fill(resetWhite);
  
}; // end draw

void keyPressed() {
};// end keyPressed

void mousePressed() {
};// end mousePressed

// End MAIN program
