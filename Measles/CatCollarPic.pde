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
  imageX = xCenter-faceRadius; //smallest width of the image is the width*0
  imageY = xCenter+faceRadius; //smallest height of the image is the height*0
  imageWidth = width-1; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight = height-1;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  
}
