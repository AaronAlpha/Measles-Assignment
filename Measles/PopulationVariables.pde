float xFace, yFace, widthDiamterFace, heightDiamterFace, faceRadius, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth, xCenterMouth, yCenterMouth;
float xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar;
float xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside;
float xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar;
float xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside;
float xStar, yStar, starDiameter;

int thack = 5;
float xMeasle, yMeasle, measleDiameter;
float xCenter, yCenter;
color resetWhite = #FFFFFF, red = #FF0000, green = #00FF00, black = #000000, pink = #FA86EF, gold = #FAF360; //this is not populated as population needs display(hence why unique)
// color, is similar to an int declaration 
boolean nightMode = false; //means night mode is off(bluelight on)
color backgroundColor;
float xCenterPoint, yCenterPoint, xRightTop, yRightTop, xRightBottom, yRightBottom, xLeftTop, yLeftTop, xLeftBottom, yLeftBottom;


void populationVariables(){
  
    
  //Population - Face
  xFace = xCenter ;
  yFace = yCenter ;
  if (width > height) {smallerDimension = height; //trying to make sure that the face fits in the provided canvas dimensions
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
  
  
  //Population - Mouth
  xLeftMouth = xCenter - xCenter*1/4;
  yLeftMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  //End Population - Mouth
  
  
  faceRadius = smallerDimension/2; //used to figure out the boudaries for where the measles can spawn
  //Population Measle
  
  //End Population Measle
  
  
  //Population - Cat Ears 
  xbottomrightRightCatEar = xCenter + faceRadius;
  ybottomrightRightCatEar = yCenter;
  xtoprightRightCatEar = xCenter + faceRadius;
  ytoprightRightCatEar = 0;
  xcenterRightCatEar = xCenter;
  ycenterRightCatEar = 0;
  
  xbottomleftLeftCatEar = xCenter - faceRadius;
  ybottomleftLeftCatEar = yCenter;
  xtopleftLeftCatEar = xCenter - faceRadius;
  ytopleftLeftCatEar = 0;
  xcenterLeftCatEar = xCenter ;
  ycenterLeftCatEar = 0;
  //End Population Cat Ears
  
  
  //Population - inside of Cat Ears
  fill(pink);
  xbottomrightRightCatEarInside = xCenter + faceRadius*3/4;
  ybottomrightRightCatEarInside = yCenter - yCenter*1/4;
  xtoprightRightCatEarInside = xCenter + faceRadius*3/4;
  ytoprightRightCatEarInside = yCenter - yCenter*3/4;
  xcenterRightCatEarInside = xCenter + xCenter*10/53 ;
  ycenterRightCatEarInside = yCenter - yCenter*3/4;
  
  xbottomleftLeftCatEarInside = xCenter - faceRadius*3/4;
  ybottomleftLeftCatEarInside = yCenter - yCenter*1/4;
  xtopleftLeftCatEarInside = xCenter - faceRadius*3/4;
  ytopleftLeftCatEarInside = yCenter - yCenter*3/4;
  xcenterLeftCatEarInside = xCenter - xCenter*10/53;
  ycenterLeftCatEarInside = yCenter - yCenter*3/4;
 
  //End Population inside of Cat Ears
  
  
  
  
  
  //Population Cat Whiskers
  xCenterPoint = xCenter;
  yCenterPoint = yCenter;
  xRightTop =  xCenter + xCenter*2/3;
  yRightTop = 262.5; //have to show formula
  xRightBottom = xCenter + xCenter*2/3;
  yRightBottom = 337.5; //have to show the formula
  xLeftTop = xCenter - xCenter*2/3;
  yLeftTop = 262.5; //have to show formula
  xLeftBottom = xCenter - xCenter*2/3;
  yLeftBottom = 337.5; //have to show formula
  
  
  
  //rect(xCenter - faceRadius, 0, 2*faceRadius, smallerDimension); //visual representation for the 'virtual box' for all the measles to lie in/on
  fill(resetWhite);
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace); 
   
  
  
}
