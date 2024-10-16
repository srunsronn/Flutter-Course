class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  Point translatePoint(double dx, double dy) {
    return new Point(x + dy, y + dy);
  }

  @override
  String toString() {
    return ('x: $x , y : $y');
  }
}

void main() {
  const Point p1 = Point(3, 2);
  Point p2 = p1.translatePoint(1, 2);

  print("Translate point: $p2");
  
}
