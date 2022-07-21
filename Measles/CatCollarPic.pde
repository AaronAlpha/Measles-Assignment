float imageX, imageY, imageWidth, imageHeight, imageWidthRatio = 0.0, imageHeightRatio = 0.0, picWidthAdjusted, picHeightAdjusted;  
float imageLargerDimension, imageSmallerDimension;
PImage catCollar;
Boolean widthLarger = false, heightLarger = false;




void catCollarPic() {
  
  
  catCollar = loadImage("../pink cat collar.jpg"); //Dimensions: width = 263; height = 192
  int picWidth = 263;
  int picHeight = 192;
  if (picWidth >= picHeight) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
  } else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;  
  heightLarger = true;
  }; //End image dimension comparison
  
  //Aspect Ratio
  if(widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if(widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension; 
  
  //Population of Rect()  
  imageX = xCenter-faceRadius;
  imageY = yCenter; 
  imageWidth = smallerDimension; 
  imageHeight = height;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  
}
