class Point {
  double x;
  double y;

  Point(this.x, this.y);

  void translatePoint(double dx, double dy) {
    x += dx;
    y += dy;
  }

  @override
  String toString() {
    return ('x: $x , y : $y');
  }
}

void main() {
  Point p = Point(3, 2);
  p.translatePoint(1, 2);
  print(p);
}
