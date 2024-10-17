class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  Point translatePoint(double dx, double dy) {
    return Point(x + dx, y + dy);
  }

  @override
  String toString() {
    return 'Point(x: $x, y: $y)';
  }
}

class Color {}

class Shape {
  // Properties
  final Point leftBottom;
  final double width;
  final double height;
  final Color? backgroundColor;

  // Constructor
  Shape(this.leftBottom, this.width, this.height, [this.backgroundColor]);

  // Calculate the right-top point
  Point get rightTop {
    return Point(leftBottom.x + width, leftBottom.y + height);
  }

  @override
  String toString() {
    return 'Shape(leftBottom: $leftBottom, width: $width, height: $height, backgroundColor: $backgroundColor)';
  }
}

void main() {
  // Create a Shape instance
  Shape shape1 = Shape(Point(0, 0), 10, 10, Color());
  print("Shape1 Top-Right: ${shape1.rightTop}"); 

  Point translatedPoint = shape1.leftBottom.translatePoint(5, 5);
  print("Translated Bottom-Left of Shape1: $translatedPoint"); 
}
