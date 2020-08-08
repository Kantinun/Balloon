/* Basic drawing example 
circle(x, y, extent) => x-> x-coordinate of circle, y-> y-coordinate of circle, extent-> width and height of circle
ellipse(x, y, width, height) => x-> x-coordinate of ellipse, y-> y-coordinate of ellipse, width-> width of ellipse, height-> x-> height of ellipse
line(x1, y1, z1, x2, y2, z2) => x1-> x-coordinate of first point, y1-> y-coordinate of first point, z1-> z-coordinate of first point, x2-> x-coordinate of second point, y2-> y-coordinate of second point, z2-> z-coordinate of second point
rect(x, y, width, height, radii) => x-> x-coordinate of rectangle, y-> y-coordinate of rectangle, width-> width of rectangle, height-> x-> height of rectangle, radill-> radii for all four corners
*/
void setup(){
  size(400, 400);
  circle(50, 100, 60);
  ellipse(50, 200, 50, 100);
  line(100,200,200,300);
  rect(300, 100, 60, 60, 10);
}
