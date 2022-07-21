void drawMethod() {
  //rect(imageX, imageY, imageWidth, imageHeight);
  catCollarPic();
  image(catCollar, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
  
  
  xStar1 = random(0, xCenter-faceRadius);
  yStar1 = random(0, height);
  
  xStar2 = random(xCenter+faceRadius, width);
  yStar2 = random(0, height);
  //stars in background
  fill(gold);//color of star
  noStroke();//removes the outlining for measle
  starDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xStar1, yStar1, starDiameter, starDiameter);//creating stars in background
  ellipse(xStar2, yStar2, starDiameter, starDiameter);//creating stars in background
  stroke(1); //resets default //setting for how thick the star outline will be 
  fill(resetWhite); 
  //
  
  
  
  xSnow1 = random(0, xCenter-faceRadius);
  ySnow1 = random(0, height);
  
  xSnow2 = random(xCenter+faceRadius, width);
  ySnow2 = random(0, height);
  //snow in background 
  fill(iceBlue);
  noStroke();
  snowDiameter = random(smallerDimension*1/75, smallerDimension*1/90);
  ellipse(xSnow1, ySnow1, snowDiameter, snowDiameter);
  ellipse(xSnow2, ySnow2, snowDiameter, snowDiameter);
  stroke(1);
  fill(resetWhite);
  //

  
  //measles
  xMeasle = random(xCenter - faceRadius, xCenter + faceRadius);
  yMeasle = random(0, smallerDimension);

  fill(red);//color of measle
  noStroke();//removes the outlining for measle
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);//creating meassle
  stroke(1); //resets default //setting for how thick the measle outline will be 
  fill(resetWhite);
  //
  
  
  
  fill(resetWhite);
  //brown patch aorund left eye
  fill(brownorange);
  ellipse(xLeftEyePatch, yLeftEyePatch, patchDiameter, patchDiameter);
  fill(resetWhite);
  //
  
  //eyes + color
  fill(green);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  fill(resetWhite);
  //
  
  //inside eye
  fill(black);
  ellipse(xLeftEyePupil, yLeftEyePupil, pupilDiameter, pupilDiameter);
  ellipse(xRIghtEyePupil, yRightEyePupil, pupilDiameter, pupilDiameter);
  fill(resetWhite);
  //
  
  //nose + mouth + frekles + color
  fill(pink);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);//Nose
  fill(resetWhite);
  //ellipse(); //frekles
  strokeCap(ROUND); //Default is ROUND; PROJECT is another option  //sets style for line endings, 3options: SQUARE, ROUND, EXTENDED(all caps)
  strokeWeight(thack);//sets width of stroke used for lines, points and borders of shapes; width units: pixel;(option 1 is default)
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1);
  //


 
  
  
  //cat ears + color
  fill(brownorange);
  triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
  fill(lightblack);
  triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
  fill(pink);
  triangle(xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside);
  triangle(xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside);
  //
  

  //whiskers
  line(xCenterPoint, yCenterPoint, xRightTop, yRightTop);
  line(xCenterPoint, yCenterPoint, xRightBottom, yRightBottom);
  line(xCenterPoint, yCenterPoint, xLeftTop, yLeftTop);
  line(xCenterPoint, yCenterPoint, xLeftBottom, yLeftBottom);
  fill(resetWhite);
  //
} 
